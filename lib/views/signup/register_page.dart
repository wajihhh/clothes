import 'package:clothes_app/views/signup/register_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_loader.dart';
import '../../widgets/custom_textfield.dart';
import '../signin/sign_in.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(SignUpViewModel());
    // final model = SignInViewModel();
    return Obx(
      () => CustomLoaderWidget(
        isTrue: model.isLoading.value,
        child: SafeArea(
          child: Scaffold(
            body: Form(
              key: model.pageFormKey,
              child: signUpForm(model, context),
            ),
          ),
        ),
      ),
    );
  }

  Widget signUpForm(SignUpViewModel model, BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      // color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text('Register',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),),
            ),
            const SizedBox(
              height: 40,
            ),
            Text("Sign Up To Get Started!",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
            const SizedBox(
              height: 30,
            ),

            CustomTextField(
              textInputType: TextInputType.text,
              labeltext: 'name',
              placeholdertext: '*********',
              sufixIcon: true,
              controller: model.nameController,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              // textInputType: TextInputType.emailAddress,
              labeltext: 'Email Address',
              placeholdertext: 'joshluis@gmail.com',
              controller: model.emailController,
            ),
            const SizedBox(
              height: 20,
            ),

            CustomTextField(
              textInputType: TextInputType.text,
              labeltext: 'Password',
              placeholdertext: '*********',
              sufixIcon: true,
              controller: model.passwordController,
            ),

            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 15),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () => Get.off(() => const SignInView()),
                  child: const Text(
                    "Sign In",
                    style:  TextStyle(
                      color: Color(
                        0xffFFC100,
                      ),
                      decorationColor: Color(0xffFFC100),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),

            const Spacer(),
            CustomButton(
              onTap: () => model.signUp(),
              height: 55,
              width: 330,
              text: "Register Account",
            ),



            // SizedBox(
            //   height: 30.sp,
            // ),


            // SizedBox(height: 10,),
            // Text("Sign Up With Google")
          ],
        ),
      ),
    );
  }
}
