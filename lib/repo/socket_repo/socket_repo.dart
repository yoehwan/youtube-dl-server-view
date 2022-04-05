abstract class SocketRepo {
  Future<Stream?> init();
  Stream? connect();
}