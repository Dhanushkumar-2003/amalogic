import 'package:amologic/bottom.dart';
import 'package:amologic/home.dart';
import 'package:amologic/splash.dart';
import 'package:amologic/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future<void> signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    User? user;

    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      user = userCredential.user;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Explit()));
      print('user.>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$user');
      if (user != null) {
        print("ok>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$user ");
      } else {
        print("no");
      }
      // Use the user object for further operations or navigate to a new screen.
    } catch (e) {
      print(e.toString());
    }
  }

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool on = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // margin: EdgeInsets.only(left: 10, right: 10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.all(Radius.circular(8.0)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(23, 23, 23, 1),
                  Color.fromRGBO(31, 0, 28, 1),
                  Color.fromRGBO(28, 12, 27, 1),
                  Color.fromRGBO(25, 22, 26, 1),
                  Color.fromRGBO(59, 0, 69, 1),
                  Color.fromRGBO(59, 0, 69, 1),
                  Color.fromRGBO(23, 23, 23, 1),
                  // Color.fromRGBO(23, 23, 23, 1),
                ]),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 70),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'Welcome Back!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            child: Text('Welcome back we missed you',
                                style: TextStyle(
                                  color: Color.fromRGBO(217, 217, 217, 2),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(left: 40, right: 100),
                        // color: Colors.red,
                        child: Text(
                          "Username",
                          style: TextStyle(
                              color: Color.fromRGBO(164, 164, 164, 8)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  // Color.fromRGBO(23, 23, 23, 1),
                                  // Color.fromRGBO(31, 0, 28, 1),
                                  // Color.fromRGBO(28, 12, 27, 1),
                                  // Color.fromRGBO(25, 22, 26, 1),
                                  Color.fromRGBO(59, 0, 69, 1),
                                  Color.fromRGBO(59, 0, 69, 1),
                                  Color.fromRGBO(23, 23, 23, 1),
                                ]),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            child: auth_TextFormField(
                                _email,
                                Icon(Icons.person_outline_outlined),
                                'username',
                                ''),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(left: 40, right: 100),
                        // color: Colors.red,
                        child: Text(
                          "password",
                          style: TextStyle(
                              color: Color.fromRGBO(164, 164, 164, 8)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          // width: 200,
                          // margin: EdgeInsets.only(left: 12, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  // Color.fromRGBO(23, 23, 23, 1),
                                  // Color.fromRGBO(31, 0, 28, 1),
                                  // Color.fromRGBO(28, 12, 27, 1),
                                  // Color.fromRGBO(25, 22, 26, 1),
                                  Color.fromRGBO(59, 0, 69, 1),
                                  Color.fromRGBO(59, 0, 69, 1),
                                  Color.fromRGBO(23, 23, 23, 1),
                                ]),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            child: auth_TextFormField2(
                                _password,
                                Icon(Icons.key_sharp),
                                Icon(Icons.visibility_off),
                                'password',
                                ''),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style:
                            TextStyle(color: Color.fromRGBO(164, 164, 164, 8)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        print("SK");
                        // signInWithGoogle();
                      },
                      child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Color.fromRGBO(156, 63, 228, 2),
                                  Color.fromRGBO(198, 86, 71, 2)
                                ]),
                          ),
                          height: 50,
                          width: double.infinity,
                          child: Center(
                              child: Text(
                            "Sigin in",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: <Widget>[
                    Expanded(
                        child: Container(
                      child: Divider(
                        indent: 10,
                        // color: Colors.white,
                      ),
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "or continue with",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Divider(
                      endIndent: 10,
                      color: Colors.white,
                    )),
                  ]),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        containe(
                            Image(
                                width: 3,
                                height: 3,
                                image: AssetImage("images/vector.png")), () {
                          signInWithGoogle();
                          print("kndnk");
                        }),
                        containe(
                            Image(
                                color: Colors.white,
                                image: AssetImage("images/a.png")),
                            () {}),
                        containe(
                            Image(
                                width: 30,
                                height: 20,
                                image: AssetImage("images/f2.png")),
                            () {})
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// rgb(156, 63, 228)
// rgb(198, 86, 71)