import 'package:ecommerce_test/core/constants.dart';
import 'package:ecommerce_test/view/screen_home/screen_home.dart';
import 'package:ecommerce_test/view/screen_register/screen_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LogoWidget(),
                  kHeight10,
                  const Text("Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  kHeight20,
                  const Text('Email ID',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  InputFields(
                      formKey: formKey, email: email, password: password),
                  kHeight40,
                  ConfirmButton(
                    formKey: formKey,
                    email: email,
                    password: password,
                  ),
                  kHeight40,
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const ScreenRegister(),
                        ));
                      },
                      child: const Text('New to FirstCry? Register Here'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    super.key,
    required this.formKey,
    required this.email,
    required this.password,
  });

  final TextEditingController email;
  final TextEditingController password;

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFff7043),
        ),
        onPressed: () async {
          if (formKey.currentState!.validate()) {
            _validate(email, password, context);
          }
        },
        child: const Text('CONTINUE'),
      ),
    );
  }

  _validate(email, password, context) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim())
          .then((value) =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const ScreenHome(),
              )));
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("LogInsuccefull")));
    } catch (e) {
      String error = '';
      if (e.toString().contains('wrong-password')) {
        error = 'The entered passworod is wrong';
      } else if (e.toString().contains('user-not-found')) {
        error = 'No User with the specified email';
      } else {
        error = "Something went wrong please try again later";
      }
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Oops"),
          content: Text(error),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("OK"))
          ],
        ),
      );
    }
  }
}

class InputFields extends StatelessWidget {
  const InputFields({
    super.key,
    required this.formKey,
    required this.email,
    required this.password,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController email;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: email,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "Email Cannot be empty";
              } else if (!RegExp(
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                  .hasMatch(value)) {
                return "Enter a Valid email";
              } else {
                return null;
              }
            },
            decoration: const InputDecoration(
                hintText: "Enter your Email ID ",
                hintStyle: TextStyle(fontSize: 13)),
          ),
          kHeight40,
          const Text('Password', style: TextStyle(fontWeight: FontWeight.w500)),
          TextFormField(
            controller: password,
            obscureText: true,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "Password Cannot be empty";
              } else {
                return null;
              }
            },
            decoration: const InputDecoration(
                hintText: "Enter your Password",
                hintStyle: TextStyle(fontSize: 13)),
          ),
        ],
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fc-logo-s.jpg'),
        ),
      ),
    );
  }
}
