library controller;

import 'package:get/get.dart';
import 'package:yaml/yaml.dart';
import 'package:youtube_dl_server_view/repo/config_repo/src/config_impl.dart';
import 'package:youtube_dl_server_view/use_case/config_use_case/config_use_case.dart';

part 'src/home_controller.dart';

part 'src/config_controller.dart';

void initControllers() {
  Get.put(HomeController());
  Get.put(ConfigController());
}
