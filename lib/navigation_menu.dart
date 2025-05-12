import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/personalizations/screens/setting/setting.dart';
import 'package:flutterecommerce/features/shop/screens/home.dart';
import 'package:flutterecommerce/features/shop/screens/store/store.dart';
import 'package:flutterecommerce/utills/helper/helperfunction.dart';
import 'package:get/get.dart';

import 'features/shop/screens/wishlist/wishlist.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    final dark=CustomHelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx((){
        return NavigationBar(
          backgroundColor: dark?Colors.black:Colors.white,
            indicatorColor: dark?Colors.white.withOpacity(0.1):Colors.black.withOpacity(0.1),
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index)=>controller.selectedIndex.value=index,
            destinations:[
              const NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              const NavigationDestination(icon: Icon(Icons.shop), label: "Store"),
              const NavigationDestination(icon: Icon(Icons.monitor_heart), label: "Heart"),
              const NavigationDestination(icon: Icon(Icons.people), label: "Profile"),
            ]);
      }),
      body: Obx(()=> controller.screen[controller.selectedIndex.value]),

    );
  }
}
class NavigationController extends GetxController{
  Rx<int> selectedIndex=0.obs;

  final screen=[HomeScreen(),StoreScreen(),FavouriteScreen(),SettingScreen()];
}
