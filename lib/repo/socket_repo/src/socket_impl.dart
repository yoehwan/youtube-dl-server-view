import 'package:youtube_dl_server_view/repo/socket_repo/socket_repo.dart';
import 'package:youtube_dl_server_view/service/src/socket_service.dart';

class SocketImpl extends SocketRepo {
  final String baseUrl = "ws://localhost:9999/socket";
  final SocketService _service = SocketService();

  @override
  Stream? get connectStream => _service.stream;

  @override
  Future<Stream?> init() async {
    return connect();
  }

  @override
  Stream? connect() {
    return _service.connectWith(baseUrl);
  }
}
