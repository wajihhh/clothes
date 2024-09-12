import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import '../theming.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final GetStorage box = GetStorage();

  @override
  Widget build(BuildContext context) {
    final String email = box.read('email');

    return Container(
      decoration: BoxDecoration(
        gradient: CustomTheme.getLinearGradient(context),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            "Profile",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 40.0, right: 40),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Email: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                        TextSpan(
                          text: email,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              // Text(email,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),),
            ],
          ),
        ),
      ),
    );
  }
}
