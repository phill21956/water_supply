import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(widget.userType == 1
            ? 'Consumer'
            : widget.userType == 2
                ? 'supplier'
                : 'Unresolved'),
      ),
      body: Container(
        child: Center(
          child: Text(widget.userType == 1
              ? 'Consumer'
              : widget.userType == 2
                  ? 'supplier'
                  : 'Unresolved'),
        ),
      ),
    );
  }
}
