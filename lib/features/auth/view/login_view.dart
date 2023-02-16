import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/common/rounded_small_button.dart';
import 'package:twitter_clone/constants/ui_constants.dart';
import 'package:twitter_clone/features/auth/widgets/auth_field.dart';
import 'package:twitter_clone/theme/pallete.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appBar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AuthField(controller: emailController, hintText: 'Email'),
                SizedBox(
                  height: 25,
                ),
                AuthField(controller: emailController, hintText: 'Password'),
                SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedSmallButton(onTap: () {}, label: 'Done'),
                ),
                SizedBox(
                  height: 40,
                ),
                RichText(
                    text: TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(fontSize: 16),
                        children: [
                      TextSpan(
                          text: ' Sign up',
                          style:
                              TextStyle(color: Pallete.blueColor, fontSize: 16),
                          recognizer: TapGestureRecognizer()..onTap = () {})
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
