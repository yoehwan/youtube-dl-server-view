part of controller;

class ConfigController extends GetxController {
  static ConfigController find() => Get.find<ConfigController>();

  final ConfigUseCase _useCase = ConfigUseCase(ConfigImpl());

  @override
  void onReady() {
    super.onReady();
    init();
  }

  final Completer _loading = Completer();
  Future get isLoading => _loading.future;

  Future init() async {
    await _useCase.init();
    _loading.complete();
  }

  void addConfigListener(VoidCallback listener) {}

  void removeConfigListener(VoidCallback listener) {}

  Future updateConfig(Map<String, dynamic> config) async {}

  Map<String, dynamic> loadConfig() {
    return {};
  }

  /// updateView
  final String configViewID = "configViewID";

  void updateConfigView() {
    update([configViewID]);
  }
}
