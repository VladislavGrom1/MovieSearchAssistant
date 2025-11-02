import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/view/themes/colors.dart';
import 'package:movie_search_assistant/view/widgets/custom_snack_bar.dart';

class GlobalNetworkController extends GetxController {
  final Connectivity _connectivity = Connectivity();
  final RxBool _isConnectedToInternet = true.obs;

  RxBool get isConnectedToInternet => _isConnectedToInternet;

  @override
  void onInit() {
    // Слушаем изменения в типе подключения
    _connectivity.onConnectivityChanged.listen((_) {_updateInternetStatus();});
    _updateInternetStatus(); // первоначальная проверка
    super.onInit();
  }

  Future<void> _updateInternetStatus() async {
    bool wasConnected = _isConnectedToInternet.value;
    bool nowConnected = await _hasInternetConnection();

    if (wasConnected != nowConnected) {
      _isConnectedToInternet.value = nowConnected;
      if (!nowConnected) {
        _onInternetLost();
      } else {
        _onInternetRestored();
      }
    }
  }

  Future<bool> _hasInternetConnection() async {
    var results = await _connectivity.checkConnectivity();
    bool hasNetwork = results.contains(ConnectivityResult.wifi) || results.contains(ConnectivityResult.mobile);

    if (!hasNetwork) return false;

    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException {
      return false;
    }
  }

  void _onInternetLost() {
    CustomSnackBar.showError(title: "Нет интернета", message: "Проверьте интернет соединение");
  }

  void _onInternetRestored() {
    CustomSnackBar.showSuccess(title: "Подключение успешно", message: "Интернет соединение успешно установлено");
  }
}