
abstract class SocketRepo {
  Stream? get connectStream;
  Future<Stream?> init();
  Stream? connect();

}