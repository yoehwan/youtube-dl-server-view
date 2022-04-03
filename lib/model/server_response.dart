class ServerResponse {
  const ServerResponse({
    required this.dateTime,
    required this.result,
    required this.data,
  });

  final DateTime dateTime;

  final bool result;

  final dynamic data;

  Map<String, dynamic> toMap() {
    return {
      'dateTime': dateTime,
      'result': result,
      'data': data,
    };
  }

  factory ServerResponse.fromMap(dynamic _map) {
    Map<String, dynamic> map = Map<String, dynamic>.from(_map);
    return ServerResponse(
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime']),
      result: map['result'] as bool,
      data: map['data'] as dynamic,
    );
  }
}
