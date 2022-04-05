import 'package:youtube_dl_server_view/repo/socket_repo/socket_repo.dart';

class SocketUseCase {
  SocketUseCase(this.repo);

  final SocketRepo repo;

  Future<Stream?> initUseCase() async {
    return await repo.init();
  }

  Stream? connect() {
    return repo.connect();
  }
}
