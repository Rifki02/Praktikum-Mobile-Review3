import 'package:andro1/widget/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController umur = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const SizedBox(height: 20),
            // CustomTextfield(controller: username, label: "username", hint: "Masukkan Username", controller),
            // const SizedBox(height: 20),
            const SizedBox(height: 20),
            CustomTextfield(controller: nama, label: "username", hint: "Masukkan Username"),
            const SizedBox(height: 20),
            CustomTextfield(controller: email, label: "email", hint: "Masukkan email"),
            const SizedBox(height: 20),
            CustomTextfield(controller: umur, label: "umur", hint: "Masukkan umur"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                    // print("username: $username\n password: $password");
                    // username.clear();
                    // password.clear();
                });
              },
              style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}y