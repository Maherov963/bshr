import 'package:alkhalil/auth/register.dart';
import 'package:alkhalil/my_text_form_field.dart';
import 'package:alkhalil/router.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Robot Chat"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: MyTextFormField(
                  hint: "username",
                  controller: username,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MyTextFormField(
                  hint: "password",
                  controller: username,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  MyRouter.myPush(
                    context: context,
                    child: const HomeBshr(),
                  );
                },
                child: const Text("login"),
              ),
              TextButton(
                onPressed: () {
                  MyRouter.myPush(
                      context: context, child: const RegisterPage());
                },
                child: const Text(
                  "dont have an account?",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
