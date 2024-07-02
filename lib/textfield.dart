import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

bool ok = false;
Widget auth_TextFormField(
    TextEditingController controller, Icon icon, String label, String validator,
    {bool obscureText = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: TextFormField(
      controller: controller,
      obscureText: obscureText,
      textInputAction: TextInputAction.next,
      style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
      // cursorColor: Colors.red,
      validator: (value) {
        if (value!.isEmpty) {
          return validator;
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Color.fromRGBO(164, 164, 164, 8)),

        suffixIconColor: Color.fromRGBO(164, 164, 164, 8),
        prefixIcon: icon,
        prefixIconColor: Color.fromRGBO(164, 164, 164, 8),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white),
        ),
        // fillColor:Gradient,
        // filled: true,
      ),
    ),
  );
}

Widget auth_TextFormField2(TextEditingController controller, Icon icon,
    Icon? icons, String label, String validator,
    {bool obscureText = false}) {
  return Padding(
    padding: const EdgeInsets.all(0),
    child: TextFormField(
      controller: controller,
      obscureText: obscureText,
      textInputAction: TextInputAction.next,
      style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
      // cursorColor: Colors.red,
      validator: (value) {
        if (value!.isEmpty) {
          return validator;
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Color.fromRGBO(164, 164, 164, 8)),
        suffixIcon: icons!,
        suffixIconColor: Color.fromRGBO(164, 164, 164, 8),
        prefixIcon: icon,
        prefixIconColor: Color.fromRGBO(164, 164, 164, 8),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white),
        ),
        // fillColor:Gradient,
        // filled: true,
      ),
    ),
  );
}

Widget containe(Image images, ontap) {
  return GestureDetector(
    onTap: ontap,
    child: BlurryContainer(
      child: Opacity(
        opacity: 0.5,
        child: Container(
          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(125)),

          // width: 90,
          // height: 70,
          // color: Color.fromARGB(100, 22, 44, 33),
          // color: Colors.white,
          // color: Colors.transparent,

          child: Container(
              margin: EdgeInsets.all(5),
              // width: 90,
              // height: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(28, 12, 27, 1),
                      Color.fromRGBO(23, 23, 23, 1),
                    ]),
              ),
              child: Container(width: 20, height: 20, child: images)),
        ),
      ),
      blur: 2,
      width: 100,
      height: 90,
      // elevation: 1,
      color: Colors.transparent,
      padding: const EdgeInsets.all(8),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
    ),
  );
}

Widget detail_textfield(
    TextEditingController controller, String label, String validator,
    {bool obscureText = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: TextFormField(
      controller: controller,
      obscureText: obscureText,
      textInputAction: TextInputAction.next,
      style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
      // cursorColor: Colors.red,
      validator: (value) {
        if (value!.isEmpty) {
          return validator;
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: label,
        hintStyle: TextStyle(fontSize: 17.0, color: Colors.white),
        // labelText: label,
        labelStyle: const TextStyle(color: Color.fromRGBO(164, 164, 164, 8)),

        suffixIconColor: Color.fromRGBO(164, 164, 164, 8),

        prefixIconColor: Color.fromRGBO(164, 164, 164, 8),
        enabledBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white),
        ),
        // fillColor:Gradient,
        // filled: true,
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget widthest(Text text, Color color, Height) {
  return Container(
    width: 40,
    height: 20,
    child: Text(text.toString()),
    color: color,
  );
}

Widget doc_detail(
  Image images,
  String text,
) {
  return Container(
    color: Color.fromRGBO(37, 37, 37, 0.8),
    child: Row(
      children: [
        Container(
            margin: EdgeInsets.only(bottom: 25, left: 20, top: 10),
            child: images),
        Container(
          margin: EdgeInsets.only(bottom: 20, left: 20),
          padding: EdgeInsets.only(bottom: 0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // margin: EdgeInsets.only(top: 10),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              Container(
                child: Text(
                  'service:vaccine,surgert',
                  style: TextStyle(color: Color.fromRGBO(164, 164, 164, 1)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Icon(
                        color: Colors.white,
                        size: 20,
                        Icons.location_on_outlined),
                    Container(
                        child: Text(
                      "10 km",
                      style: TextStyle(color: Colors.white),
                    ))
                  ],
                ),
              ),
              Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Available for",
                            style: TextStyle(
                                color: Color.fromRGBO(80, 204, 152, 2)),
                          ),
                          SizedBox(
                              // width: 40,
                              ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Row(
                          children: [
                            Image(image: AssetImage('images/cat2.png')),
                            SizedBox(
                              width: 5,
                            ),
                            Image(image: AssetImage('images/cat2.png'))
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
