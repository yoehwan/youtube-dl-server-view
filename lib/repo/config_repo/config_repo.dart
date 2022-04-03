import 'package:youtube_dl_server_view/model/server_response.dart';

abstract class ConfigRepo{
  Future<ServerResponse?> loadConfig();

}