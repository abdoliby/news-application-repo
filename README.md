# News Application

A comprehensive news application built with Flutter that provides the latest news from various categories using News API.

## ✨ Features

### 🏠 Home Screen
- Display recent general news
- Horizontal scrollable categories bar
- Modern and responsive design

### 📱 Available Categories
- **Sports**
- **Business**  
- **Entertainment**
- **General**
- **Health**
- **Science**
- **Technology**

### 🔧 Technical Features
- News API integration for latest news
- Smooth scrolling with CustomScrollView
- Material Design implementation
- External link opening support
- Clean architecture with separated models, services, and views

## 🛠️ Technologies Used

- **Flutter**: Main framework
- **Dart**: Programming language
- **Dio**: HTTP requests
- **News API**: News source
- **URL Launcher**: Link opening

## 📁 Project Structure

```
lib/
├── main.dart                    # Main entry point
├── models/                      # Data models
│   ├── article_model.dart       # Article model
│   └── category_model.dart      # Category model
├── services/                    # Services
│   └── news_service.dart        # News service
├── views/                       # Screens
│   ├── home_view.dart          # Home screen
│   └── category_view.dart      # Category screen
└── widgets/                     # Custom widgets
    ├── category_card.dart       # Category card
    ├── category_list_view.dart  # Categories list
    ├── news_list_view.dart      # News list
    ├── news_list_view_builder.dart
    ├── News_tile.dart           # Article tile
    └── news_widget.dart         # News widget
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>=3.3.3 <4.0.0)
- Dart SDK
- Android Studio or VS Code
- Emulator or physical device for testing

### Installation

1. **Clone the repository**
```bash
git clone [https://github.com/abdoliby/news-application-repo]
cd news_application
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run the application**
```bash
flutter run
```

## 🔑 API Setup

The app uses News API to fetch news. Make sure to:
- Get an API key from [newsapi.org](https://newsapi.org/)
- Replace the key in `lib/services/news_service.dart`

## 📦 Dependencies

```yaml
dependencies:
  flutter: sdk
  dio: ^5.7.0                    # HTTP client
  cupertino_icons: ^1.0.6        # iOS icons
  url_launcher: ^6.3.0           # URL launching

dev_dependencies:
  flutter_test: sdk
  flutter_lints: ^3.0.0         # Linting rules
```

## 🎨 Assets

The application contains images for different categories:
- `assets/sports.avif` - Sports
- `assets/business.avif` - Business
- `assets/entertaiment.avif` - Entertainment
- `assets/general.avif` - General
- `assets/health.avif` - Health
- `assets/science.avif` - Science
- `assets/technology.jpeg` - Technology

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the project
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Contact

If you have any questions or suggestions, feel free to reach out!

---

**Built with ❤️ using Flutter**
