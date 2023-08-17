import 'package:alkhalil/app/widgets/my_text_form_field.dart';
import 'package:alkhalil/app/router/router.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Robot Chat"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
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
                  hint: "email",
                  controller: email,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MyTextFormField(
                  hint: "password",
                  controller: password,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MyTextFormField(
                  hint: "confirmPassword",
                  controller: confirmPassword,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  MyRouter.myPush(
                    context: context,
                    child: const HomeBshr(),
                  );
                },
                child: const Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
