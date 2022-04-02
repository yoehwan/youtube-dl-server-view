import 'package:yaml/yaml.dart';
import 'package:youtube_dl_server_view/controller/controller.dart';

class ConfigViewModel {
  final ConfigController _controller = ConfigController.find();

  bool get isLoading => !_controller.initialized;

  YamlMap get config => _controller.config;

  bool get configError => _controller.config.isEmpty;

  /// updateView
  String get configViewID => _controller.configViewID;
}
