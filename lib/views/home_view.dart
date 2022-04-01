import 'package:fluent_ui/fluent_ui.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: NavigationBody.builder(
          index: 0,
          itemBuilder: (_, index) {
            return Text("$index");
          }),
      pane: NavigationPane(
        selected: 0,
        displayMode: PaneDisplayMode.compact,
        items: [
          PaneItem(icon: const Icon(FluentIcons.chart)),
          PaneItem(icon: const Icon(FluentIcons.chart)),
          PaneItem(icon: const Icon(FluentIcons.chart)),
        ],
      ),
    );
  }
}
