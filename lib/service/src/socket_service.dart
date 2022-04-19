import 'dart:async';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SocketService {
  static final SocketService _instance = SocketService._internal();

  factory SocketService() {
    return _instance;
  }

  SocketService._internal();

  late WebSocketChannel _channel;

  final StreamController _connectStream = StreamController.broadcast();



  Stream get stream {
    return _connectStream.stream;
  }

  void connectWith(String url) {
    try {
      _channel = WebSocketChannel.connect(
        Uri.parse(url),
      );
      _channel.stream.listen((event) {
        print(event);
      });
      // _connectStream.addStream(_channel.stream);
    } catch (e) {
      throw FlutterError(e.toString());
    }
  }

  void sink(dynamic data) {
    _channel.sink.add(data);
  }

  Future closeConnection([int code = 0, String reason = ""]) async {
    return _channel.sink.close(code, reason);
  }
}
