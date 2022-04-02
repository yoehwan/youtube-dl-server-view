import 'package:youtube_dl_server_view/controller/controller.dart';

class HomeViewModel {
  final HomeController _homeController = HomeController.find();

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int value) {
    if (_currentIndex == value) return;
    _currentIndex = value;
    _homeController.updateNavigationView();
  }

  /// updateView

  String get navigationViewID => _homeController.navigationViewID;

  void onChangedCurrentIndex(int value) {
    currentIndex = value;
  }

  String get themeButtonID => _homeController.themeButtonID;

  bool _darkTheme = false;

  bool get isDarkTheme => _darkTheme;

  final Duration themeSwitchDuration = const Duration(milliseconds: 100);

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    _homeController.updateThemeButton();
  }
}
