import 'package:fluent_ui/fluent_ui.dart';
import 'package:youtube_dl_server_view/controller/controller.dart';

class ConnectViewModel {
  final SocketController socketController = SocketController.find();

  ConnectionState get connectionState => socketController.connectionState;

  bool get isConnected => connectionState == ConnectionState.active;

  void init() {
    socketController.addConnectionListener(_listener);
  }

  void _listener() {
    socketController.updateConnectView();
  }

  void dispose() {
    socketController.removeConnectionListener(_listener);
  }


  String get connectViewID => socketController.connectViewID;
}
