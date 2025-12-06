# Mashura | مشورة

<div align="center">

**Your Legal Consultation at Your Fingertips**  
**إستشارتك القانونية بين يديك!**

A comprehensive Flutter-based mobile application connecting users with legal professionals for consultations and administrative services.

[![Flutter](https://img.shields.io/badge/Flutter-3.3.4+-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.3.4+-0175C2?logo=dart)](https://dart.dev)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-lightgrey)](https://flutter.dev)

</div>

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Architecture](#-architecture)
- [Getting Started](#-getting-started)
- [Project Structure](#-project-structure)
- [Dependencies](#-dependencies)
- [Screenshots](#-screenshots)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🌟 Overview

**Mashura** (مشورة) is a mobile application designed to bridge the gap between individuals seeking legal assistance and qualified legal professionals. The platform provides a streamlined interface for accessing various legal services, from consultations to administrative procedures.

### Key Objectives

- **Accessibility**: Make legal services accessible to everyone through a user-friendly mobile interface
- **Efficiency**: Streamline the process of finding and connecting with legal professionals
- **Comprehensive**: Cover a wide range of legal and administrative services
- **Bilingual**: Full Arabic language support with right-to-left (RTL) text direction

---

## ✨ Features

### For Clients (Users)

#### 🏛️ Legal Consultations (إستشارة قانونية)
- **Real Estate Law** (عقاري) - Property and real estate matters
- **Labor Law** (عمالي) - Employment and workplace issues
- **Family Law** (أسرة) - Family and personal status matters
- **Civil Law** (مدني) - General civil legal matters
- **Commercial Law** (تجاري) - Business and commercial issues
- **Contracts** (عقود) - Contract drafting and review

#### 📄 Administrative Services (خدمات إدارية)

**Document Extraction** (إستخراج الوثائق):
- Nationality documents (الجنسية)
- Residence certificates (شهادة اقامة)
- Birth certificates (شهادة ميلاد)

**Procedures** (الإجراءات):
- Filing complaints (تقديم شكاوى)
- Writing petitions (كتابة عرائض)
- Filing appeals (تقديم طعون)

**Required Documents** (الوثائق اللازمة):
- Intellectual property protection (حماية الملكية الفكرية)
- Startup establishment (انشاء مؤسسة ناشئة)
- Property contracts (عقود الملكية)

#### 💼 Professional Consultations (الإستشارات المهنية)
- Retirement services (خدمات التقاعد)
- Employment files (ملفات توظيف)
- Career path issues (إشكالات خلال المسار المهني)

### For Lawyers (Workers)

- **Profile Management**: Manage professional profiles and specializations
- **Client Communication**: Direct chat functionality with clients
- **Case Management**: Track pending and completed cases
- **Settings**: Customize preferences and availability

### General Features

- 🔐 **Secure Authentication**: Email-based login and registration system
- 💬 **Real-time Chat**: Direct messaging between clients and lawyers
- 👤 **User Profiles**: Comprehensive profile management for both user types
- 🎨 **Modern UI**: Clean, intuitive interface with Arabic font support
- 📱 **Cross-platform**: Works on Android, iOS, Web, Windows, macOS, and Linux

---

## 🏗️ Architecture

### User Roles

The application supports two distinct user roles:

1. **Client/User** (مستخدم): Individuals seeking legal services
2. **Lawyer/Worker** (محامي): Legal professionals providing services

### Navigation Flow

```
Login/Signup
    ├── Client Flow
    │   ├── Home (Service Categories)
    │   ├── Chat (Communication)
    │   ├── Profile (Settings)
    │   └── Service Selection → Lawyer Profiles
    │
    └── Lawyer Flow
        ├── Home (Dashboard)
        ├── Pending Cases
        ├── Completed Cases
        ├── Chat (Client Communication)
        └── Settings
```

### Technology Stack

- **Framework**: Flutter 3.3.4+
- **Language**: Dart 3.3.4+
- **State Management**: StatefulWidget (can be upgraded to Provider/Riverpod/GetX)
- **UI Components**: Material Design with custom Arabic fonts
- **Navigation**: Navigator 2.0 with named routes
- **Localization**: Flutter Localizations (Arabic support)

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.3.4 or higher)
- Dart SDK (3.3.4 or higher)
- Android Studio / VS Code with Flutter extensions
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd mashura
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate launcher icons** (optional)
   ```bash
   flutter pub run flutter_launcher_icons
   ```

4. **Run the application**
   ```bash
   # For development
   flutter run

   # For specific platform
   flutter run -d chrome        # Web
   flutter run -d windows       # Windows
   flutter run -d android       # Android
   flutter run -d ios           # iOS
   ```

### Configuration

#### App Icon
The app icon is located at `Image/MashuraIconZoomed.jpg`. To update:
1. Replace the image file
2. Run `flutter pub run flutter_launcher_icons`

#### Package Name
To change the package name:
```bash
flutter pub run change_app_package_name:main com.yourcompany.mashura
```

---

## 📁 Project Structure

```
mashura/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── LoginPage.dart            # Authentication screens
│   ├── Home.dart                 # Client home screen
│   ├── HomeW.dart                # Lawyer home screen
│   ├── daColor.dart              # Color scheme definitions
│   │
│   ├── Client/                   # Client-specific screens
│   │   ├── ClinetHome.dart       # Client dashboard
│   │   ├── ClientChat.dart       # Client chat interface
│   │   ├── ClientSettings.dart   # Client settings
│   │   ├── ClientSorts.dart      # Sorting/filtering
│   │   └── WorkerProfile.dart    # Lawyer profile view
│   │
│   ├── Worker/                   # Lawyer-specific screens
│   │   ├── WorkerHome.dart       # Lawyer dashboard
│   │   ├── WorkerChat.dart       # Lawyer chat interface
│   │   ├── WorkerSettings.dart   # Lawyer settings
│   │   ├── pending.dart          # Pending cases
│   │   └── ended.dart            # Completed cases
│   │
│   ├── Shared/                   # Shared components
│   │   └── ProfileAvatars.dart   # Reusable avatar components
│   │
│   └── Model/                    # Data models (to be expanded)
│
├── Image/                        # Image assets
│   ├── Avatars/                  # User avatars
│   ├── CAvatars/                 # Custom avatars
│   ├── kotob/                    # Book/document icons
│   └── MashuraIcon.jpg           # App icon
│
├── android/                      # Android-specific files
├── ios/                          # iOS-specific files
├── web/                          # Web-specific files
├── windows/                      # Windows-specific files
├── linux/                        # Linux-specific files
├── macos/                        # macOS-specific files
│
├── pubspec.yaml                  # Project dependencies
└── README.md                     # This file
```

---

## 📦 Dependencies

### Core Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| `flutter` | SDK | Core framework |
| `flutter_localizations` | SDK | Localization support |
| `arabic_font` | ^0.0.9 | Arabic typography |
| `google_fonts` | ^6.2.1 | Additional fonts |
| `google_nav_bar` | ^5.0.6 | Bottom navigation |
| `botton_nav_bar` | ^1.0.2 | Navigation bar alternative |
| `table_calendar` | ^3.1.1 | Calendar functionality |
| `http` | ^1.2.1 | HTTP requests |
| `cupertino_icons` | ^1.0.6 | iOS-style icons |

### Dev Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| `flutter_test` | SDK | Testing framework |
| `flutter_lints` | ^3.0.0 | Code quality |
| `flutter_launcher_icons` | ^0.13.1 | Icon generation |
| `change_app_package_name` | ^1.5.0 | Package renaming |
| `rename_app` | ^1.6.3 | App renaming |

---

## 📱 Screenshots

*Screenshots to be added*

---

## 🔮 Future Enhancements

### Planned Features

- [ ] **Backend Integration**: Connect to a real backend API
- [ ] **Payment Gateway**: Integrate payment processing for services
- [ ] **Document Upload**: Allow users to upload documents
- [ ] **Video Consultations**: Add video call functionality
- [ ] **Appointment Scheduling**: Calendar-based appointment system
- [ ] **Reviews & Ratings**: Client feedback system
- [ ] **Push Notifications**: Real-time notifications
- [ ] **Multi-language Support**: Add English and French
- [ ] **Advanced Search**: Filter lawyers by specialization, rating, location
- [ ] **Case Tracking**: Real-time case status updates

### Technical Improvements

- [ ] Implement state management (GetX/Riverpod/Bloc)
- [ ] Add unit and widget tests
- [ ] Implement CI/CD pipeline
- [ ] Add error handling and logging
- [ ] Optimize performance and bundle size
- [ ] Implement offline mode with local storage
- [ ] Add accessibility features

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Code Style

- Follow the [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Use meaningful variable and function names
- Add comments for complex logic
- Ensure all code is properly formatted (`flutter format .`)
- Run linter before committing (`flutter analyze`)

---

## 📄 License

This project is private and proprietary. All rights reserved.

---

## 👥 Team

*Team information to be added*

---

## 📞 Contact

For questions or support, please contact:

*Contact information to be added*

---

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Arabic font contributors
- All open-source package maintainers

---

<div align="center">

**Made with ❤️ using Flutter**

*Version 1.0.0+1*

</div>
