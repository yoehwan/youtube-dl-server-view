import 'package:youtube_dl_server_view/repo/socket_repo/socket_repo.dart';

class SocketUseCase {
  SocketUseCase(this.repo);

  final SocketRepo repo;

  Stream get connectStream => repo.connectStream;

  void initUseCase()  {
    connect();
  }

  void connect() {
    repo.connect();
  }
}
