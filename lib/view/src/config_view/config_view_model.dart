import 'package:yaml/yaml.dart';
import 'package:youtube_dl_server_view/controller/controller.dart';
import 'package:youtube_dl_server_view/enum/socket_data_type.dart';
import 'package:youtube_dl_server_view/model/socket_response.dart';

class ConfigViewModel {
  final ConfigController configController = ConfigController.find();

  bool get isLoading => !configController.initialized;

  final YamlMap _config = YamlMap();

  YamlMap get config => _config;

  bool get configError => _config.isEmpty;

  final SocketController socketController = SocketController.find();

  void init() {
    socketController.connectStream.listen((event) {
      print(event);
      try {
        final _res = SocketResponse.fromMap(event);
        if (!_res.type.isConfig) return;
        _config.clear();
        _config.addAll(_res.data);
      } catch (e) {}
    });
  }

  /// updateView
  String get configViewID => configController.configViewID;
}
