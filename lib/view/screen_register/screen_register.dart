import 'package:ecommerce_test/core/constants.dart';
import 'package:ecommerce_test/view/screen_home/screen_home.dart';
import 'package:ecommerce_test/view/screen_login/screen_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ScreenRegister extends StatelessWidget {
  const ScreenRegister({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController name = TextEditingController();
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
                  const Text("Register",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  kHeight20,
                  InputFields(
                      formKey: formKey,
                      email: email,
                      password: password,
                      name: name),
                  kHeight40,
                  ConfirmButton(
                    formKey: formKey,
                    email: email,
                    password: password,
                    name: name,
                  ),
                  kHeight40,
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const ScreenLogin(),
                          ),
                        );
                      },
                      child: const Text('Already have a account? Login Here'),
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
    required this.name,
  });

  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController name;

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
            _validate(email, password, name, context);
          }
        },
        child: const Text('CONTINUE'),
      ),
    );
  }

  _validate(email, password, name, context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());
      await FirebaseAuth.instance.currentUser!
          .updateDisplayName(name.text)
          .then((value) =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const ScreenHome(),
              )));
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("SignUp succefull")));
    } catch (e) {
      String error = '';
      if (e.toString().contains('weak-password')) {
        error = 'Password should be atleast 6 characters';
      } else if (e.toString().contains('email-already-in-use')) {
        error = 'User with the specified email already exists';
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
    required this.name,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController name;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Name', style: TextStyle(fontWeight: FontWeight.w500)),
          TextFormField(
            controller: name,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "Name Cannot be empty";
              } else {
                return null;
              }
            },
            decoration: const InputDecoration(
                hintText: "Enter your Name",
                hintStyle: TextStyle(fontSize: 13)),
          ),
          kHeight40,
          const Text('Email ID', style: TextStyle(fontWeight: FontWeight.w500)),
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
