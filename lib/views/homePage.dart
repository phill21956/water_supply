import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({required this.userType, Key? key}) : super(key: key);
  final int userType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userType == 1
            ? 'Consumer'
            : userType == 2
                ? 'supplier'
                : 'Unresolved'),
      ),
      body: Container(
        child: Center(
          child: Text(userType == 1
              ? 'Consumer'
              : userType == 2
                  ? 'supplier'
                  : 'Unresolved'),
        ),
      ),
    );
  }
}
