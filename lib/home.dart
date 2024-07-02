import 'dart:ffi';

import 'package:amologic/splash.dart';
import 'package:amologic/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

TextEditingController search = TextEditingController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          // alignment: Alignment.topLeft,
          child: Text(
            "Hello, Human!",
            style: TextStyle(color: Colors.white, fontSize: 27),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(129, 138, 249, 2),
                    borderRadius: BorderRadius.circular(13)),
                width: double.infinity,
                height: 250,
                child: Stack(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Positioned(
                      right: 1,
                      // left: 100,
                      // top: 18,
                      bottom: 1,
                      child: Container(
                        // height: 250,
                        // height: 100,
                        // height: 300
                        // width: 200,
                        // width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(134, 152, 250, 2),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(200),
                                bottomLeft: Radius.circular(20))),
                        child: Container(
                          // margin: EdgeInsets.only(left: 30),
                          child: Image(
                              height: 250, image: AssetImage('images/cat.png')),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15, top: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: 'your ',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontFamily: 'Manrope')),
                                    TextSpan(
                                        text: 'caterine ',
                                        style: TextStyle(
                                            // fontFamily: 'Manrope',
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: ' will get',
                                        style: TextStyle(
                                          fontFamily: 'Manrope',
                                          fontSize: 17,
                                          color: Colors.black,
                                        )),
                                  ])),
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: 'vaccination ',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black,
                                            fontFamily: 'Manrope')),
                                    TextSpan(
                                        text: 'tomorrow',
                                        style: TextStyle(
                                            // fontFamily: 'Manrope',
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500)),
                                  ])),
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: 'at 7:00 am ',
                                        style: TextStyle(
                                            // fontFamily: 'Manrope',
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500)),
                                  ])),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        // alignment: Alignment.bottomCenter,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.center,
                                              colors: [
                                                Color.fromRGBO(
                                                    201, 191, 244, 0.988),
                                                Color.fromRGBO(
                                                    201, 191, 244, 0.988),
                                              ]),
                                        ),
                                        width: 100,
                                        height: 50,

                                        child: Center(
                                          child: Text(
                                            "see detail",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: search,
                // obscureText: obscureText,
                textInputAction: TextInputAction.next,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.white),
                // cursorColor: Colors.red,
                validator: (value) {},
                decoration: InputDecoration(
                  hintText: 'find best vaccinate treatment',
                  labelStyle:
                      const TextStyle(color: Color.fromRGBO(164, 164, 164, 8)),
                  suffixIconColor: Color.fromRGBO(164, 164, 164, 8),
                  prefixIcon: Icon(Icons.search_outlined),
                  prefixIconColor: Color.fromRGBO(164, 164, 164, 8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  // width: 600,
                  // color: Colors.red,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 2, right: 10),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(129, 138, 249, 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 100,
                        child: Center(
                            child: Text(
                          "vaccine",
                          style: TextStyle(fontSize: 20),
                        )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 100,
                        child: Center(
                            child: Text(
                          "surgery",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(188, 187, 187, 0.965)),
                        )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 180,
                        child: Center(
                            child: Text(
                          "spa and treatment",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromRGBO(188, 187, 187, 0.965)),
                        )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 2, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 180,
                        child: Center(
                            child: Text(
                          "consultation",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromRGBO(188, 187, 187, 0.965)),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              doc_detail(
                  Image(image: AssetImage('images/doc2.png')), 'Dr.stone'),
              SizedBox(
                height: 5,
              ),
              doc_detail(
                Image(image: AssetImage('images/doc3.png')),
                'Dr.Vanessa',
              )
            ],
          ),
        ),
      ),
    );
  }
}
