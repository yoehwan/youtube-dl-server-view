part of controller;

class HomeController extends GetxController {
  static HomeController find() => Get.find<HomeController>();

  /// updateView
  final String themeButtonID = "themeButtonID";

  void updateThemeButton() {
    update([themeButtonID]);
  }

  final String navigationViewID = "navigationViewID";

  void updateNavigationView() {
    update([navigationViewID]);
  }
}
