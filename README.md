# Batua - Expense Tracker App

A modern, intuitive expense tracking application built with Flutter that helps you manage your personal finances with ease.

## 📱 Features

- **Expense Management**: Add, view, and delete expenses with detailed information
- **Category-based Tracking**: Organize expenses by categories (Work, Leisure, Food, etc.)
- **Visual Analytics**: Interactive charts to visualize your spending patterns
- **Dark/Light Theme**: Beautiful UI with automatic theme switching
- **Cross-platform**: Works on Android, iOS, Web, and Desktop
- **Undo Functionality**: Easily undo accidental expense deletions
- **Responsive Design**: Optimized for all screen sizes

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=3.0.6)
- Dart SDK
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/ashh9755/Expense_Tracker.git
   cd Expense_Tracker
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   # For Android
   flutter run
   
   # For Web
   flutter run -d chrome
   
   # For iOS
   flutter run -d ios
   ```

## 📁 Project Structure

```
lib/
├── main.dart              # App entry point and theme configuration
├── splash_screen.dart     # Splash screen with app logo
├── expenses.dart          # Main expense management screen
├── new_expenses.dart      # Add new expense form
├── expenses_list.dart     # Expense list display
├── expense_item.dart      # Individual expense item widget
├── Models/
│   └── expense.dart       # Expense data model
└── chart/
    ├── chart.dart         # Main chart widget
    └── chart_bar.dart     # Bar chart component
```

## 🛠️ Dependencies

- **flutter**: Core Flutter framework
- **cupertino_icons**: iOS-style icons
- **uuid**: Unique identifier generation
- **intl**: Internationalization and date formatting

## 🎨 UI/UX Features

- **Material Design**: Modern, clean interface following Material Design principles
- **Color Schemes**: Custom light and dark themes with purple/blue color palette
- **Responsive Layout**: Adapts to different screen sizes and orientations
- **Smooth Animations**: Fluid transitions and interactions
- **Accessibility**: Built with accessibility in mind

## 📊 Features in Detail

### Expense Management
- Add expenses with title, amount, date, and category
- View all expenses in a clean, organized list
- Delete expenses with undo functionality
- Categorize expenses for better organization

### Analytics
- Visual representation of spending patterns
- Category-based expense breakdown
- Monthly spending overview
- Interactive charts for data exploration

### User Experience
- Intuitive navigation
- Quick add expense functionality
- Swipe-to-delete gestures
- Snackbar notifications with undo actions

## 🚀 Deployment

### Build for Production

```bash
# Android APK
flutter build apk

# Android App Bundle
flutter build appbundle

# Web
flutter build web

# iOS
flutter build ios
```

### Web Deployment

The app can be deployed to any web hosting service:

1. Build the web version:
   ```bash
   flutter build web
   ```

2. Deploy the `build/web` folder to your hosting service

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Ashley Gomes**
- GitHub: [@ashh9755](https://github.com/ashh9755)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Material Design for the design system
- The open-source community for various packages

## 📞 Support

If you have any questions or need help, please open an issue on GitHub or contact the author.

---

**Made with ❤️ using Flutter**
