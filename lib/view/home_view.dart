import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:youtube_dl_server_view/controller/controller.dart';
import 'package:youtube_dl_server_view/view/src/connect_view/connect_view.dart';

import 'home_view_model.dart';
import 'src/config_view/config_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final HomeViewModel _viewModel = HomeViewModel();

  NavigationAppBar _appBar() {
    Widget _themeButton() {
      return GetBuilder<HomeController>(
        id: _viewModel.themeButtonID,
        builder: (_) {
          return GestureDetector(
            onTap: _viewModel.toggleTheme,
            child: Icon(
              _viewModel.isDarkTheme
                  ? FluentIcons.clear_night
                  : FluentIcons.sunny,
            ),
          );
        },
      );
    }
    return NavigationAppBar(
      title: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text("Title"),
              Spacer(),
              ConnectView(),
              SizedBox(width: 16),
              _themeButton(),
            ],
          ),
        ),
      ),
      automaticallyImplyLeading: false,
    );
  }

  NavigationPane _pane() {
    return NavigationPane(
      selected: _viewModel.currentIndex,
      onChanged: _viewModel.onChangedCurrentIndex,
      items: [
        PaneItem(
          icon: Icon(FluentIcons.full_history),
          title: Text("Requests"),
        ),
        PaneItem(
          icon: Icon(FluentIcons.historical_weather),
          title: Text("Status"),
        ),
        PaneItem(
          icon: Icon(FluentIcons.file_y_m_l),
          title: Text("Config"),
        ),
      ],
    );
  }

  Widget _content() {
    return NavigationBody(
      index: _viewModel.currentIndex,
      children: [
        ConfigView(),
        Text(""),
        Text(""),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: _viewModel.navigationViewID,
      builder: (_) {
        return NavigationView(
          appBar: _appBar(),
          content: _content(),
          pane: _pane(),
        );
      },
    );
  }
}
