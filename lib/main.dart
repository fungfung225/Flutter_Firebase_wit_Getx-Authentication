import 'package:firebase/auth_controller.dart';
import 'package:firebase/login_page.dart';
import 'package:firebase/signup_page.dart';
import 'package:firebase/splash_screen.dart';
import 'package:firebase/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home:SplashScreen(),
    );
  }
}
