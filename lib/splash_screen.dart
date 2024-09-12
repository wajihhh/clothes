import 'dart:async';
import 'package:clothes_app/services/token_manager.dart';
import 'package:clothes_app/views/home_screen.dart';
import 'package:clothes_app/views/product_screen.dart';
import 'package:clothes_app/views/signin/sign_in.dart';
import 'package:clothes_app/views/signin/sign_in_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize dependencies
    Get.put(SignInViewModel());

    // Perform token validation and navigation after the widget is built
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _checkAuthStatus();
      },
    );

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Future<void> _checkAuthStatus() async {
    // Simulate a delay for splash screen
    await Future.delayed(
      const Duration(seconds: 2),
    );

    // Check token validity
    final token = await TokenManager().getToken();
    final isLoggedIn = token.isNotEmpty;

    // Navigate based on authentication status
    if (isLoggedIn) {
      Get.offAll(
        () => HomeScreen(),
      );
    } else {
      Get.offAll(
        () => const SignInView(),
      );
    }
  }
}

//
// import 'dart:async';
// import 'package:clothes_app/services/token_manager.dart';
// import 'package:clothes_app/views/product_screen.dart';
// import 'package:clothes_app/views/signin/sign_in.dart';
// import 'package:clothes_app/views/signin/sign_in_view_model.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // Initialize dependencies
//     Get.put(SignInViewModel());
//
//     // Perform token validation and navigation after the widget is built
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _checkAuthStatus();
//     });
//
//     return const Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
//
//   Future<void> _checkAuthStatus() async {
//     // Simulate a delay for splash screen
//     await Future.delayed(const Duration(seconds: 2));
//
//     // Check if the user is logged in
//     final tokenManager = TokenManager();
//     final isLoggedIn = await tokenManager.isLoggedIn();
//     final token = await tokenManager.getToken();
//
//     // Navigate based on authentication status
//     if (isLoggedIn && token.isNotEmpty) {
//       Get.offAll(() => ProductListView());
//     } else {
//       Get.offAll(() => const SignInView());
//     }
//   }
// }
