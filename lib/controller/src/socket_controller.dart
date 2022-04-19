part of controller;

class SocketController extends GetxController {
  static SocketController find() => Get.find<SocketController>();

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  late SocketUseCase _useCase;

  Stream get connectStream => _useCase.connectStream;

  /// As Possible, Don't make [RxBool] or [bool] and notify View in here
  /// just use [Completer].
  final Completer _loading = Completer();

  Future get isLoading => _loading.future;

  void _init() async {
    _useCase = SocketUseCase(SocketImpl());
    _useCase.initUseCase();
    _loading.complete();
  }

  /// updateView
  final String connectViewID = "connectViewID";

  void updateConnectView() {
    update([connectViewID]);
  }
}
