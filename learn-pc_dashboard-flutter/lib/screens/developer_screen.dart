import 'package:flutter/material.dart';
import 'package:flutter_pcdashboard/utilities/values.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class DeveloperScreen extends StatefulWidget {
  @override
  _DeveloperScreenState createState() => _DeveloperScreenState();
}

class _DeveloperScreenState extends State<DeveloperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text(
          Values.DEVELOPER.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: true,
        gradient: LinearGradient(
            colors: [
              Colors.deepOrange,
              Colors.deepOrangeAccent,
              Colors.orange,
              Colors.orangeAccent,
            ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'logo.png',
                    width: MediaQuery.of(context).size.height / 2,
                    height: MediaQuery.of(context).size.height / 3,
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "P",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                          text: "&",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                          text: "C Dashboard Student",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                          text:
                              " l?? ???ng d???ng qu???n l?? v?? h??? tr??? h???c t???p d??nh cho sinh vi??n b??? m??n V???t l?? Tin h???c.",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "???ng d???ng ???????c vi???t tr??n n???n t???ng ",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                      TextSpan(
                          text: "Flutter",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                          text: " b???ng ng??n ng??? ",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                      TextSpan(
                          text: "Dart",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                          text: ".",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text:
                              "????y l?? ????? t??i kho?? lu???n t???t nghi???p c???a sinh vi??n ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontStyle: FontStyle.italic)),
                      TextSpan(
                          text: "B??i Ng?? T??n B??ch",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                          text: ", kho?? K16.",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ]),
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
