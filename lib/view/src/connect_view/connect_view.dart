import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:youtube_dl_server_view/controller/controller.dart';

import 'connect_view_model.dart';

class ConnectView extends StatefulWidget {
  const ConnectView({Key? key}) : super(key: key);

  @override
  State<ConnectView> createState() => _ConnectViewState();
}

class _ConnectViewState extends State<ConnectView>
    with AutomaticKeepAliveClientMixin {
  final ConnectViewModel _viewModel = ConnectViewModel();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GetBuilder<SocketController>(
      id: _viewModel.connectViewID,
      builder: (_) {
        if (_viewModel.isLoading) return const SizedBox();
        return StreamBuilder(
          stream: _viewModel.connectStream,
          builder: (_, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              return const Icon(FluentIcons.plug_connected);
            }
            return const Icon(FluentIcons.plug_disconnected);
          },
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
