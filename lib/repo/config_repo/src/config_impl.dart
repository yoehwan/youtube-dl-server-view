import 'package:flutter/services.dart';
import 'package:youtube_dl_server_view/model/server_response.dart';
import 'package:youtube_dl_server_view/repo/config_repo/config_repo.dart';
import 'package:youtube_dl_server_view/service/src/api_service.dart';

class ConfigImpl extends ConfigRepo {
  final ApiService _service = ApiService();

  @override
  Future<ServerResponse?> loadConfig() async {
    return await _service.loadConfig();
  }
}
