import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:youtube_dl_server_view/controller/controller.dart';
import 'package:youtube_dl_server_view/view/src/config_view/src/yaml_tree_view.dart';

import 'config_view_model.dart';

class ConfigView extends StatefulWidget {
  const ConfigView({Key? key}) : super(key: key);

  @override
  State<ConfigView> createState() => _ConfigViewState();
}

class _ConfigViewState extends State<ConfigView>
    with AutomaticKeepAliveClientMixin {
  final ConfigViewModel _viewModel = ConfigViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.init();
  }

  void dispse() {
    _viewModel.dispose();
    super.dispose();
  }

  Widget _emptyView() {
    return const Text("emptyView");
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GetBuilder<ConfigController>(
      id: _viewModel.configViewID,
      builder: (_) {
        if (_viewModel.isEmpty) {
          return _emptyView();
        }
        return ScaffoldPage(
          content: YamlTreeView(_viewModel.config),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
