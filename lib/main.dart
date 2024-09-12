import 'package:clothes_app/splash_screen.dart';
import 'package:clothes_app/theming.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'controller/product_controller.dart';

void main() async {
  await GetStorage.init(); // Initialize GetStorage

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(
        () {
          Get.put(
            ProductController(),
          );
        },
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
       theme: CustomTheme.lightTheme,

    home: SplashScreen(),
    );
  }
}
