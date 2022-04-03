import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:youtube_dl_server_view/model/server_response.dart';
import 'package:youtube_dl_server_view/service/service.dart';

class ApiService {
  final Dio _dio = Dio();
  final Service _service = Service();
  final String _baseUrl = "http://localhost:8444/v1";

  Future<ServerResponse?> loadConfig() async {
    try {
      final _res = await _dio.get(_baseUrl + "/config");
      return ServerResponse.fromMap(jsonDecode(_res.data));
    } catch (e) {
      return null;
    }
  }
}
