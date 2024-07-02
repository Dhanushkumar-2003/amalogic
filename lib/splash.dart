import 'dart:async';

import 'package:amologic/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(129, 138, 249, 2),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          // scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Container(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('images/dogsymbol.png')),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Healthy pet",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Helping you',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromRGBO(222, 225, 254, 2))),
                  ])),
                ),
                Container(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'to keep ',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromRGBO(222, 225, 254, 2))),
                    TextSpan(
                        text: 'Your bestie',
                        style: TextStyle(
                          fontSize: 20,
                          height: 2,
                          fontWeight: FontWeight.bold,
                        )),
                  ])),
                ),
                Container(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Stay Healthy!',
                        style: TextStyle(
                            fontSize: 17,
                            height: 2,
                            color: Color.fromRGBO(222, 225, 254, 2))),
                  ])),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80, bottom: 20),
                  // padding: EdgeInsets.only(bottom: 550),
                  // color: Colors.white,
                  child: Image(
                      width: double.infinity,
                      // height: 400,
                      image: AssetImage('images/dog6.png')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
