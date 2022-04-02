import 'package:fluent_ui/fluent_ui.dart';
import 'package:youtube_dl_server_view/controller/controller.dart';

import 'view/home_view.dart';

void main() {
  runApp(const MyApp());
  initControllers();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube-Dl Server',
      theme: ThemeData(),
      home: HomeView(),
    );
  }
}
