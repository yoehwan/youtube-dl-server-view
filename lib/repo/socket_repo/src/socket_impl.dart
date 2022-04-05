import 'package:youtube_dl_server_view/repo/socket_repo/socket_repo.dart';
import 'package:youtube_dl_server_view/service/src/socket_service.dart';

class SocketImpl extends SocketRepo {
  final String baseUrl =
      "wss://demo.piesocket.com/v3/channel_1?api_key=oCdCMcMPQpbvNjUIzqtvF1d2X2okWpDQj4AwARJuAgtjhzKxVEjQU6IdCjwm&notify_self";
  final SocketService _service = SocketService();

  @override
  Future<Stream?> init() async {
    return connect();
  }

  @override
  Stream? connect() {
    return _service.connectWith(baseUrl);
  }





}
