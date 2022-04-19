import 'package:youtube_dl_server_view/enum/socket_data_type.dart';

class SocketResponse {
  const SocketResponse({
    required this.typeIndex,
    required this.data,
  });

  final int typeIndex;

  SocketDataType get type => SocketDataType.values[typeIndex];

  final dynamic data;

  Map<String, dynamic> toMap() {
    return {
      'typeIndex': typeIndex,
      'data': data,
    };
  }

  factory SocketResponse.fromMap(Map<String, dynamic> map) {
    return SocketResponse(
      typeIndex: map['typeIndex'] as int,
      data: map['data'] as dynamic,
    );
  }
}
