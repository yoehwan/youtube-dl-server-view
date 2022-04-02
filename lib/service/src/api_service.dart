import 'package:youtube_dl_server_view/service/service.dart';

class ApiService extends Service {
  Future loadConfig() async {
    return '''api:
  port: "8444"
  version: "v1"
  config_api: "/config"
  audio_api: "/audio/{videoID}"
  log_api: "/log/{page}"
  melon_api: "/melon"
  youtube_api: "/youtube"
youtube_dl:
  audio_format: "mp3"
  audio_quality: 5
melon_chart:
  top: 40
  ballade: 0
  dance: 0
  hiphop: 0
  rnb: 0
  indie: 0
  rock: 0
  trot: 0
  folk: 0
youtube_chart:
  top: 40
logger:
  path: "./log"
view:
  path: "./view/web/"''';
  }
}
