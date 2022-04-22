import 'package:yaml/yaml.dart';
import 'package:youtube_dl_server_view/controller/controller.dart';

class ConfigViewModel {
  final ConfigController configController = ConfigController.find();

  bool get isLoading => !configController.initialized;

  final YamlMap _config = YamlMap();

  YamlMap get config => _config;

  bool get configError => _config.isEmpty;

  final SocketController socketController = SocketController.find();

  void init() {
  }

  /// updateView
  String get configViewID => configController.configViewID;
}
