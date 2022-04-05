import 'package:fluent_ui/fluent_ui.dart';
import 'package:youtube_dl_server_view/repo/socket_repo/socket_repo.dart';

class SocketUseCase {
  SocketUseCase(this.repo);

  final SocketRepo repo;

  Stream? get connectStream=> repo.connectStream;


  Future<Stream?> initUseCase() async {
    return await repo.init();
  }

  Stream? connect() {
    return repo.connect();
  }
}
