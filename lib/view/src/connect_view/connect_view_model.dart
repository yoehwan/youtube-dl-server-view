import 'package:youtube_dl_server_view/controller/controller.dart';

class ConnectViewModel {
  final SocketController _controller = SocketController.find();

  bool get isLoading => _controller.isLoading;

  String get connectViewID => _controller.connectViewID;

  Stream? get connectStream => _controller.connectStream;
}
