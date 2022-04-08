import 'package:youtube_dl_server_view/controller/controller.dart';

class ConnectViewModel {
  final SocketController _controller = SocketController.find();

  Future init() async {
    await _controller.isLoading;
    _controller.connectStream.listen(onConnected, onDone: onDisconnected);
  }

  bool _connection = false;

  bool get isConnected => _connection;

  set connection(bool value) {
    if (_connection == value) return;
    _connection = value;
    _controller.updateConnectView();
  }

  void onConnected(event) {
    connection = true;
  }

  void onDisconnected() {
    connection = false;
  }

  String get connectViewID => _controller.connectViewID;
}
