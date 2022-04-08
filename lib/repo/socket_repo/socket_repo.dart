abstract class SocketRepo {
  Stream get connectStream;

  void connect([String? url]);
}
