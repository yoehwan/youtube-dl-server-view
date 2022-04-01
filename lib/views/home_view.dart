import 'package:fluent_ui/fluent_ui.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final ValueNotifier<int> _pageIndex = ValueNotifier(0);

  NavigationAppBar _appBar() {
    return const NavigationAppBar(
      // backgroundColor: Colors.red.withOpacity(0.5),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text("@@@"),
      ),
      automaticallyImplyLeading: false,
    );
  }

  NavigationPane _pane(int index) {
    return NavigationPane(
      selected: index,
      onChanged: (value) {
        _pageIndex.value = value;
      },
      items: [
        PaneItem(
          icon: Icon(FluentIcons.settings),
          title: Text("All Requests"),
        ),
        PaneItem(
          icon: Icon(FluentIcons.settings),
          title: Text("Config"),
        ),
        PaneItem(
          icon: Icon(FluentIcons.settings),
          title: Text("Config"),
        ),
        PaneItem(
          icon: Icon(FluentIcons.settings),
          title: Text("Config"),
        ),
        PaneItem(
          icon: Icon(FluentIcons.settings),
          title: Text("Config"),
        ),
      ],
    );
  }

  Widget _content(int index) {
    return NavigationBody.builder(
      index: index,
      itemBuilder: (_, index) {
        return ScaffoldPage(
          header: Text("header$index"),
          content: Text("Body$index"),
          bottomBar: Text("Bottom$index"),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder<int>(
      valueListenable: _pageIndex,
      builder: (_, index, __) {
        return NavigationView(
          appBar: _appBar(),
          content: _content(index),
          pane: _pane(index),
        );
      },
    );
  }
}
