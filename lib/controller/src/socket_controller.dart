part of controller;

class SocketController extends GetxController {
  static SocketController find() => Get.find<SocketController>();

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  final SocketUseCase _useCase=SocketUseCase(SocketImpl());

  final ValueNotifier<ConnectionState> _connectionState =
      ValueNotifier(ConnectionState.none);

  ConnectionState get connectionState => _connectionState.value;

  /// As Possible, Don't make [RxBool] or [bool] and notify View in here
  /// just use [Completer].
  final Completer _loading = Completer();

  Future get isLoading => _loading.future;

  void _init() async {
    _useCase.initUseCase();
    _loading.complete();
    _useCase.connectStream.listen(
      _onDataListener,
      onDone: _onDoneListener,
    );
  }

  void _onDataListener(dynamic data) {
    _connectionState.value = ConnectionState.active;
  }

  void _onDoneListener() {
    _connectionState.value = ConnectionState.done;
  }

  void addConnectionListener(VoidCallback listener) {
    _connectionState.addListener(listener);
  }

  void removeConnectionListener(VoidCallback listener) {
    _connectionState.removeListener(listener);
  }

  /// updateView
  final String connectViewID = "connectViewID";

  void updateConnectView() {
    update([connectViewID]);
  }
}
