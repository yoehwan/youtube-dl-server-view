import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_dl_server_view/controller/controller.dart';

import 'connect_view_model.dart';

class ConnectView extends StatelessWidget {
  ConnectView({Key? key}) : super(key: key);
  final ConnectViewModel _viewModel = ConnectViewModel();

  @override
  Widget build(BuildContext context) {
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
}
