# Taskmate 🚀

Taskmate is a modern, feature-rich productivity and task management application built with Flutter. It helps you stay organized, manage your schedule, and keep track of your notes all in one place.

## ✨ Features

- **📊 Dashboard**: Get a quick overview of your productivity with real-time statistics and upcoming tasks.
- **✅ Task Management**: Create, edit, and organize tasks efficiently.
- **📋 Board System**: Organize your work into different boards or projects for better categorization.
- **📝 My Notes**: A dedicated space to jot down thoughts, ideas, and quick reminders.
- **📅 Schedule & Events**: Never miss a deadline with integrated event tracking and weekly schedules.
- **🔔 System Notifications**: Stay updated with push notifications for your tasks and messages.
- **🔐 Secure Authentication**: Full Sign In and Sign Up flow with secure token storage.
- **📱 Premium UI/UX**: A beautiful, dark-themed design with smooth animations and intuitive navigation.

## 🛠️ Tech Stack

- **Framework**: [Flutter](https://flutter.dev) (Dart)
- **State Management**: [Provider](https://pub.dev/packages/provider)
- **Networking**: [Dio](https://pub.dev/packages/dio) for API requests
- **Storage**: [Flutter Secure Storage](https://pub.dev/packages/flutter_secure_storage) for sensitive data
- **Typography**: [Google Fonts](https://pub.dev/packages/google_fonts) (Inter/Outfit)
- **Local Notifications**: [Flutter Local Notifications](https://pub.dev/packages/flutter_local_notifications)

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (Latest stable version)
- Android Studio / VS Code with Flutter extension
- A running backend server (e.g., Laravel/Node.js)

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/taskmate-flutter.git
   cd taskmate-flutter
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Configure the API**:
   Open `lib/services/api_service.dart` and configure your backend URL:
   ```dart
   static const String _baseUrlDev = 'http://10.0.2.2:8000/api'; // For Android Emulator
   static const bool isDevelopment = true;
   ```

4. **Run the app**:
   ```bash
   flutter run
   ```

## 🏗️ Project Structure

```
lib/
├── models/      # Data models
├── providers/   # State management
├── screens/     # UI Pages
├── services/    # API and other services
├── widgets/     # Reusable UI components
└── theme.dart   # App styling and themes
```

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

---
*Developed with ❤️ by the Taskmate Team*
