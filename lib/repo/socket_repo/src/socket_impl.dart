import 'dart:async';

import 'package:youtube_dl_server_view/repo/socket_repo/socket_repo.dart';
import 'package:youtube_dl_server_view/service/src/socket_service.dart';

class SocketImpl extends SocketRepo {
  final String baseUrl = "ws://localhost:8888/socket";
  final SocketService _service = SocketService();

  @override
  Stream get connectStream => _service.stream;

  @override
  void connect([String? url]) {
    _service.connectWith(url ?? baseUrl);
  }
}
