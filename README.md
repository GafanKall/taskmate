# Taskmate 🚀

Taskmate is a modern, feature-rich productivity and task management suite. It consists of a **Laravel 12** web application and a **Flutter** mobile application, working together to help you stay organized, manage your schedule, and keep track of your notes all in one place.

---

## 🏗️ Project Architecture

This repository is a monorepo containing:
- **[website/](website/)**: The backend API and web interface built with Laravel 12.
- **[mobile/taskmate/](mobile/taskmate/)**: The cross-platform mobile application built with Flutter.

---

## ✨ Key Features

### 📊 Comprehensive Dashboard
- **Real-time Statistics**: Insights into total tasks, pending, in-progress, and completed.
- **Visual Overview**: Quick access to upcoming tasks, today's events, and recent notes.

### 📋 Kanban Boards & Task Management
- **Multiple Boards**: Create separate boards for different projects or categories.
- **Drag & Drop Workflow**: Organize tasks into "To Do", "In Progress", and "Done".
- **Priority Levels**: Categorize tasks by priority (Low, Medium, High, Urgent).

### 🔔 Smart Notifications
- **Deadline Alerts**: Automated notifications triggered at 24, 12, and 6 hours before deadlines.
- **System Integration**: Push notifications on mobile and browser alerts on web.

### 🗓️ Schedule & Events
- **Weekly Schedule**: Organize your week with a clear, time-blocked view.
- **Event Management**: Create and track specific events with categories and times.

### 📝 Personal Notes
- **Lightweight Scratchpad**: Jot down ideas, reminders, or quick notes.
- **Synchronized**: Access your notes from both web and mobile devices.

---

## 🛠️ Tech Stack

### Website (Backend & Web)
- **Framework**: Laravel 12 (PHP 8.2+)
- **Frontend**: Blade Templates, Vanilla CSS, JavaScript
- **Auth**: Laravel Sanctum (API) / Fortify (Web)
- **Icons**: [Boxicons](https://boxicons.com/)

### Mobile (Cross-platform)
- **Framework**: [Flutter](https://flutter.dev) (Dart)
- **State Management**: [Provider](https://pub.dev/packages/provider)
- **Networking**: [Dio](https://pub.dev/packages/dio)
- **Storage**: [Flutter Secure Storage](https://pub.dev/packages/flutter_secure_storage)
- **Local Notifications**: [Flutter Local Notifications](https://pub.dev/packages/flutter_local_notifications)

---

## 🚀 Getting Started

### Prerequisites
- PHP 8.2+ & Composer
- Node.js & NPM
- Flutter SDK (Latest stable)
- MySQL / SQLite

### Quick Setup

#### 1. Backend & Web
```bash
cd website
composer install
npm install && npm run build
cp .env.example .env
php artisan key:generate
# Configure your database in .env
php artisan migrate
php artisan serve
```

#### 2. Mobile
```bash
cd mobile/taskmate
flutter pub get
# Configure API URL in lib/services/api_service.dart
flutter run
```

---

## 📄 License

This project is licensed under the MIT License - see the subdirectories for individual license details.

---
*Developed with ❤️ as part of the UKK PPLG Project.*
