import 'package:get/get.dart';

class HomeController extends GetxController{
  final carouselCurrentIndex=0.obs;

  void updatePage(index){
    carouselCurrentIndex.value=index;
  }
}