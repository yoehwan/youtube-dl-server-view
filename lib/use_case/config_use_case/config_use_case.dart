import 'dart:convert';

import 'package:yaml/yaml.dart';
import 'package:youtube_dl_server_view/repo/config_repo/config_repo.dart';

class ConfigUseCase {
  ConfigUseCase(this.repo);

  final ConfigRepo repo;

  Future<YamlMap?> loadConfig() async {
    final _res = await repo.loadConfig();
    if (_res == null) return null;
    return loadYaml(jsonEncode(_res.data));
  }
}
