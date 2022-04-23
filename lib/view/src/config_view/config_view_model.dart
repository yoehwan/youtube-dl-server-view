import 'package:yaml/yaml.dart';
import 'package:youtube_dl_server_view/controller/controller.dart';

class ConfigViewModel {
  final ConfigController configController = ConfigController.find();
  final SocketController socketController = SocketController.find();

  final YamlMap _config = YamlMap();

  YamlMap get config => _config;

  bool get isEmpty => _config.isEmpty;

  void init() async {
    // in socket add reqeust method,
    //and call them here.
    await configController.isLoading;
    configController.addConfigListener(_listener);
  }

  void dispose() {
    configController.removeConfigListener(_listener);
  }

  void _listener() {
    configController.updateConfigView();
  }

  /// updateView
  String get configViewID => configController.configViewID;
}
