import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:water_supply/views/homePage.dart';

import '../../Widgets/input_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({required this.userType, Key? key}) : super(key: key);
  final int userType;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // int userType = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Center(
              child: Image.asset('images/Frame6.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Login to your account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            const InputFieldWidget(
              title: 'Email',
              hintText: 'Email',
              isEmail: true,
              isPassword: false,
            ),
            const SizedBox(height: 10),
            const InputFieldWidget(
              title: 'Password',
              hintText: 'Password',
              isEmail: false,
              isPassword: true,
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Home(userType: widget.userType),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xfff147DF5),
                    onPrimary: Colors.white,
                    side: const BorderSide(
                        width: 1, // the thickness
                        color: Colors.white // the color of the border
                        )),
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
