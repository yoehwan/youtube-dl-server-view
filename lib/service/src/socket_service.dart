import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SocketService {
  late WebSocketChannel _channel;

  ConnectionState _state = ConnectionState.none;

  ConnectionState get state => _state;

  set state(ConnectionState value) {
    if (_state == value) return;
    _state = value;
    _stateController.add(value);
  }

  final StreamController _stateController = StreamController();

  Stream get statusStream => _stateController.stream;

  Stream? get stream {
    try {
      return _channel.stream;
    } catch (e) {
      return null;
    }
  }

  Stream? connectWith(String url) {
    _state = ConnectionState.waiting;
    try {
      _channel = WebSocketChannel.connect(
        Uri.parse(url),
      );
      _state = ConnectionState.active;
      return _channel.stream;
    } catch (e) {
      return null;
    }
  }

  void sink(dynamic data) {
    _channel.sink.add(data);
  }

  Future closeConnection([int code = 0, String reason = ""]) async {
    _state = ConnectionState.done;
    return _channel.sink.close(code, reason);
  }
}
