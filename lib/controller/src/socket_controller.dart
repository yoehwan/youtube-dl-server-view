part of controller;

class SocketController extends GetxController {
  static SocketController find() => Get.find<SocketController>();

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  late SocketUseCase _useCase;

  Stream? get connectStream => _useCase.connectStream;

  bool _loading = true;

  bool get isLoading => _loading;

  void _init() async {
    _useCase = SocketUseCase(SocketImpl());
    await _useCase.initUseCase();
    _loading = false;
    updateConnectView();
  }

  /// updateView
  final String connectViewID = "connectViewID";

  void updateConnectView() {
    update([connectViewID]);
  }
}
