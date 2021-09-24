import 'data_connection_checker.dart';

abstract class NetWorkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl extends NetWorkInfo {
  final DataConnectionChecker? dataConnectionChecker;

  NetworkInfoImpl({required this.dataConnectionChecker});

  @override
  Future<bool> get isConnected async =>
      (await dataConnectionChecker?.hasConnection) ?? true;
}
