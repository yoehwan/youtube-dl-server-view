part of controller;

class ConfigController extends GetxController {
  static ConfigController find() => Get.find<ConfigController>();

  late ConfigUseCase _useCase;

  @override
  void onReady(){
    super.onReady();
    init();
  }

  bool _loading = true;

  bool get isLoading => _loading;

  Future init() async {
    _useCase = ConfigUseCase(ConfigImpl());
    _loading = false;
    updateConfigView();
  }

  /// updateView

  final String configViewID = "configViewID";

  void updateConfigView() {
    update([configViewID]);
  }
}
