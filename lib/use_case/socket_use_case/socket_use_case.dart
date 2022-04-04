import 'package:youtube_dl_server_view/repo/socket_repo/socket_repo.dart';

class SocketUseCase {
  SocketUseCase(this.repo);

  final SocketRepo repo;

  Future initUseCase() async {
    await repo.init();
  }

  Future connect()async{

  }

}
