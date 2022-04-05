abstract class SocketRepo {
  Stream? get connectStream;
  Stream get statusStream;
  Future<Stream?> init();
  Stream? connect();
}