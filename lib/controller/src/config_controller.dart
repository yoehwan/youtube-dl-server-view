part of controller;

class ConfigController extends GetxController {
  static ConfigController find() => Get.find<ConfigController>();

  late ConfigUseCase _useCase;

  @override
  void onReady(){
    super.onReady();
    init();
  }

  YamlMap config = YamlMap();

  bool _loading = true;

  bool get isLoading => _loading;

  Future init() async {
    _useCase = ConfigUseCase(ConfigImpl());
    await updateConfig();
    _loading = false;
    updateConfigView();

  }

  Future updateConfig() async {
    if (config.isNotEmpty) {
      config.clear();
    }
    final _res = await _useCase.loadConfig();
    if (_res != null) {
      config = _res;
    }
  }

  /// updateView

  final String configViewID = "configViewID";

  void updateConfigView() {
    update([configViewID]);
  }
}
