import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutterecommerce/bindings/general_binding.dart';
import 'package:flutterecommerce/features/authentications/screens/onboarding/onboarding.dart';
import 'package:flutterecommerce/utills/theme/them.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'data/repositories/authintication/authentication_repository.dart';

Future<void> main() async {
  try {
    // 1. Widgets বাইন্ডিং ইনিশিয়ালাইজ করুন
    WidgetsFlutterBinding.ensureInitialized();

    // 2. স্প্ল্যাশ স্ক্রিন প্রিজার্ভ করুন
    FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

    // 3. GetStorage ইনিশিয়ালাইজ করুন
    await GetStorage.init();

    // 4. Firebase ইনিশিয়ালাইজ করুন (এক্সট্রা চেক যোগ করুন)
    await Firebase.initializeApp().then((value) {
    }).catchError((error) {
    });

    // 6. AuthenticationRepository রেজিস্টার করুন (runApp এর পরে)
    Get.put(AuthenticationRepository());

    // 5. অ্যাপ রান করুন
    runApp(const MyApp());

  } catch (e) {
    print('Initialization error: $e');
  }
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      darkTheme: CustomThemdata.darkTheme,
      theme: CustomThemdata.lightTheme,
      initialBinding: GeneralBinding(),
      themeMode: ThemeMode.system,
      home: Center(child: CircularProgressIndicator()),
      debugShowCheckedModeBanner: false,
    );
  }
}

