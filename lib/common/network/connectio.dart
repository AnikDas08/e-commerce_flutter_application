import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutterecommerce/common/widgets/loader/custom_snackbar.dart';
import 'package:get/get.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();

  // Updated to match the new Stream type
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();

    // Listen to connectivity changes (new version returns List<ConnectivityResult>)
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((List<ConnectivityResult> results) {
          // Use the first result if available
          final result = results.isNotEmpty ? results.first : ConnectivityResult.none;
          _updateConnectionStatus(result);
        });
  }

  /// Update the current connection status and show a warning if disconnected
  void _updateConnectionStatus(ConnectivityResult result) {
    _connectionStatus.value = result;
    if (result == ConnectivityResult.none) {
      CustomLoader.warningSnackBar(title: 'No Internet Connection');
    }
  }

  /// Check whether the device is currently connected to any network
  Future<bool> isConnected() async {
    try {
      final results = await _connectivity.checkConnectivity();
      return results != ConnectivityResult.none;
    } catch (e) {
      return false;
    }
  }

  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }
}
