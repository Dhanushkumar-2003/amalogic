import 'package:amologic/home.dart';
import 'package:amologic/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

TextEditingController name = TextEditingController();
TextEditingController calender = TextEditingController();
TextEditingController dateinput = TextEditingController();
String datename = '';

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color.fromRGBO(10, 10, 10, 2),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          // color: Colors.red,
          // margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  color: Color.fromRGBO(10, 10, 10, 2),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "add peron detail",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "help to very your identiy during",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "during recovery",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      detail_textfield(name, 'Display Name', ''),
                      Container(
                        margin: EdgeInsets.only(left: 14),
                        child: Text(
                          "visible to everyone",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextFormField(
                          controller: dateinput,
                          // obscureText: obscureText,
                          // textInputAction: TextInputAction.next,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, color: Colors.white),
                          // cursorColor: Colors.red,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return validator;
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1980),
                                lastDate: DateTime(2101));
                            datename = pickedDate.toString();
                            print("date$datename");

                            setState(() {
                              dateinput.text = datename.toString();
                            });
                          },
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: 'Date of birth',
                            hintStyle:
                                TextStyle(fontSize: 17.0, color: Colors.white),
                            // labelText: label,
                            labelStyle: const TextStyle(
                                color: Color.fromRGBO(164, 164, 164, 8)),

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
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 14),
                        child: Text(
                          "dd-mm-yyyy",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      detail_textfield(name, 'gender', ''),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Container(
                        // alignment: Alignment.bottomCenter,
                        margin:
                            EdgeInsets.only(left: 20, right: 20, bottom: 10),
                        width: double.infinity,
                        height: 50,
                        color: Color.fromRGBO(74, 68, 88, 2),
                        child: Center(
                          child: Text(
                            "AGREE AND CONTINUE",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
