import 'package:web_socket_channel/web_socket_channel.dart';

class SocketService {
  late WebSocketChannel _channel;

  Stream? connectWith(String url) {
    try {
      _channel = WebSocketChannel.connect(
        Uri.parse(url),
      );
      return _channel.stream;
    } catch (e) {
      return null;
    }
  }

   void sink(dynamic data){
     _channel.sink.add(data);
     _channel.sink.done
  }

  Future closeConnection([int code = 0, String reason = ""]) async {
    return _channel.sink.close(code, reason);
  }
}
