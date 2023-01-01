import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_supply/views/registration_screen/login_page.dart';

class OnboardingPage2 extends StatelessWidget {
  OnboardingPage2({Key? key}) : super(key: key);
  int userType = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(1.0), BlendMode.dstATop),
                      image: const AssetImage('images/Frame5.png')))),

          // Image.asset(
          //   'images/Frame5.png',
          //   filterQuality: FilterQuality.low,
          //   opacity: const AlwaysStoppedAnimation(1.0),
          //   color: Colors.black.withOpacity(0.2),
          //   fit: BoxFit.cover,
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width,
          // ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Explore quality water with excellence',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text('The water quality is in execellent condition',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white70,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      userType = 1;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LoginPage(userType: userType),
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
                    child: const Text("Consumer"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      userType = 2;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => LoginPage(userType: userType),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Colors.white,
                        side: const BorderSide(
                            width: 1, // the thickness
                            color: Colors.white // the color of the border
                            )),
                    child: const Text("Supplier"),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
