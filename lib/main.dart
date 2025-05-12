import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerce/features/authentications/screens/onboarding/onboarding.dart';
import 'package:flutterecommerce/utills/theme/them.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
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
      themeMode: ThemeMode.system,
      home:  OnBoardingScreen(),
    );
  }
}

