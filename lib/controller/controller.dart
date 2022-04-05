library controller;

import 'dart:async';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:yaml/yaml.dart';
import 'package:youtube_dl_server_view/repo/config_repo/src/config_impl.dart';
import 'package:youtube_dl_server_view/repo/socket_repo/src/socket_impl.dart';
import 'package:youtube_dl_server_view/use_case/config_use_case/config_use_case.dart';
import 'package:youtube_dl_server_view/use_case/socket_use_case/socket_use_case.dart';

part 'src/home_controller.dart';

part 'src/config_controller.dart';

part 'src/socket_controller.dart';

void initControllers() {
  Get.put(SocketController());
  Get.put(HomeController());
  Get.put(ConfigController());
}
