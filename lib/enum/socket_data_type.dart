enum SocketDataType {
  config,
}

extension SocketBoolExtension on SocketDataType {
  bool get isConfig => this == SocketDataType.config;
}
