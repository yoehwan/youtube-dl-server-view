part of controller;

class SocketController extends GetxService{
  @override
  void onReady() {
    super.onReady();
    _init();
  }

late  SocketUseCase _useCase;
  
  final Completer _compute =  Completer();
  Future get isConnected=> _compute.future;

  
  void _init()async{
    _useCase = SocketUseCase(SocketImpl());
    await _useCase.initUseCase();

    _compute.isCompleted;
  }



}