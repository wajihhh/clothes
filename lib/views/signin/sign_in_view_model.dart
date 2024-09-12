import 'package:clothes_app/views/home_screen.dart';
import 'package:clothes_app/views/signin/sign_in.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../services/token_manager.dart';
import '../../services/user_service.dart';
import '../../widgets/snackbar_manager.dart';


class SignInViewModel extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;
  RxBool invalidCreds = false.obs;
  RxBool rememberMe = true.obs;
  RxString userEmail = ''.obs;
  final TokenManager _tokenManager = TokenManager();
  final GetStorage box = GetStorage(); // Add this line to access GetStorage


  // Ensuring the uniqueness of GlobalKey
  final GlobalKey<FormState> pageFormKey = GlobalKey<FormState>();

  @override
  Future<void> onInit() async {
    if (!kReleaseMode) {
      // emailController.text = 'gugu@gmail.com';
      // passwordController.text = '1234567';
    }
    super.onInit();
  }

  Future<void> signIn() async {
    if (!pageFormKey.currentState!.validate()) {
      SnackbarManager().showInfoSnackbar(Get.context!, 'Please enter valid credentials.');
      return;
    }
    if (emailController.text.isEmpty) {
      SnackbarManager().showInfoSnackbar(Get.context!, "Please enter email");
      return;
    }
    if (!GetUtils.isEmail(emailController.text.trim())) {
      SnackbarManager().showInfoSnackbar(Get.context!, "Please enter valid email");
      return;
    }
    if (passwordController.text.isEmpty) {
      SnackbarManager().showInfoSnackbar(Get.context!, "Please enter password");
      return;
    }
    FocusManager.instance.primaryFocus?.unfocus();

    isLoading.value = true;
    String email = emailController.text.toLowerCase().trim();
    String password = passwordController.text.trim();

    try {
      var result = await UserService().signIn(email, password);

      if (result['status']) {
        userEmail.value = email;
        await _tokenManager.setToken(result['token']);
        await _tokenManager.setEmail(email);
        box.write('email', email); // Save username in GetStorage
// Save email
        Get.offAll(() => HomeScreen());
      } else {
        invalidCreds(true);
        SnackbarManager().showAlertSnackbar(Get.context!, result['message']);
      }
    } catch (e) {
      // Handle specific Dio error
      if (e is DioException && e.response?.statusCode == 401) {
        SnackbarManager().showAlertSnackbar(Get.context!, "Invalid password");
      } else {
        // Handle any other errors
        SnackbarManager().showAlertSnackbar(Get.context!, "An error occurred. Please try again.");
      }
    } finally {
      isLoading.value = false;
    }
  }

  void logout() async {
    await _tokenManager.clearToken();
    Get.offAll(() => const SignInView());
  }
}

