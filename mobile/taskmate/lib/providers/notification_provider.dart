import 'dart:async';
import 'package:flutter/material.dart';
import 'package:taskmate/models/notification.dart';
import 'package:taskmate/services/api_service.dart';
import 'package:taskmate/services/notification_service.dart';

class NotificationProvider extends ChangeNotifier {
  List<NotificationModel> _notifications = [];
  bool _isLoading = false;
  String? _errorMessage;
  Timer? _fetchTimer;

  List<NotificationModel> get notifications => _notifications;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  int get unreadCount => _notifications.where((n) => !n.isRead).length;

  NotificationProvider() {
    _startPeriodicFetch();
  }

  void _startPeriodicFetch() {
    _fetchTimer?.cancel();
    _fetchTimer = Timer.periodic(const Duration(minutes: 2), (timer) {
      fetchNotifications();
    });
  }

  Future<void> fetchNotifications() async {
    // Only set loading if we don't have notifications yet to avoid UI flicker
    if (_notifications.isEmpty) _setLoading(true);
    _errorMessage = null;
    try {
      final response = await apiService.dio.get('/notifications');
      final List data = response.data['data'];
      final newNotifications = data
          .map((item) => NotificationModel.fromJson(item))
          .toList();

      // Detection logic for system tray notifications
      for (var newNotif in newNotifications) {
        if (!newNotif.isRead &&
            !_notifications.any((old) => old.id == newNotif.id)) {
          NotificationService.showNotification(
            id: newNotif.id,
            title: newNotif.title,
            message: newNotif.message,
          );
        }
      }

      _notifications = newNotifications;
      notifyListeners();
    } catch (e) {
      _errorMessage = 'Failed to load notifications: ${e.toString()}';
      notifyListeners();
      // Don't rethrow during periodic fetch
    } finally {
      _setLoading(false);
    }
  }

  Future<void> markAllRead() async {
    try {
      await apiService.dio.post('/notifications/mark-all-read');
      await fetchNotifications();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> markAsRead(int id) async {
    try {
      await apiService.dio.post('/notifications/$id/mark-as-read');
      final index = _notifications.indexWhere((n) => n.id == id);
      if (index != -1) {
        await fetchNotifications();
      }
    } catch (e) {
      rethrow;
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  @override
  void dispose() {
    _fetchTimer?.cancel();
    super.dispose();
  }
}
