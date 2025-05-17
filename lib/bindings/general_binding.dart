import 'package:flutterecommerce/common/network/connectio.dart';
import 'package:get/get.dart';

class GeneralBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }

}