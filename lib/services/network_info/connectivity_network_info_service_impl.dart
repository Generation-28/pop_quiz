import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pop_quiz/services/network_info/network_info_service.dart';

class ConnectivityNetworkInfoServiceImpl implements NetworkInfoService {
  final Connectivity _connectivity;

  ConnectivityNetworkInfoServiceImpl(this._connectivity);

  @override
  Future<bool> isConnected() async {
    var connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }
}
