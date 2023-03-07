import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'common/theme_helper.dart';
import 'main.dart';
import 'registration_page.dart';
import 'widgets/header_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: <Widget>[
          Image.asset(
            'assets/icon2.png',
          ),
          Text(
            " MyNFC",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      )),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/bg4.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Container(
                    color: Colors.green.withOpacity(0.5),
                  ),
                ),
              ),

              Lottie.network(
                  'https://assets2.lottiefiles.com/packages/lf20_0akluyjw.json'),
              const Text(
                'Start scanning ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              //===================================================================
              // TextButton(
              //   style: ButtonStyle(
              //     overlayColor: MaterialStateProperty.resolveWith<Color?>(
              //             (Set<MaterialState> states) {
              //           if (states.contains(MaterialState.focused))
              //             return Colors.red;
              //           return null; // Defer to the widget's default.
              //         }
              //     ),
              //   ),
              //   onPressed: () { },
              //   child: Text('TextButton'),
              // ),

              // Container(
              //  child: ElevatedButton(
              //       style: ButtonStyle(
              //           alignment: Alignment.center,
              //           backgroundColor: MaterialStateProperty.all(Colors.amber),
              //           padding:
              //           MaterialStateProperty.all(const EdgeInsets.all(20)),
              //           textStyle: MaterialStateProperty.all(
              //               const TextStyle(fontSize: 50, color: Colors.white))),
              //       onPressed: () {
              //         setState(() {
              //           // istapped = 'Button tapped';
              //         });
              //       },
              //       child: const Text('Read')),
              // ),
              // const SizedBox(
              //   height: 50,
              // ),
              // Container(
              //   child: ElevatedButton(
              //       style: ButtonStyle(
              //           backgroundColor: MaterialStateProperty.all(Colors.amber),
              //           padding:
              //           MaterialStateProperty.all(const EdgeInsets.all(20)),
              //           textStyle: MaterialStateProperty.all(
              //               const TextStyle(fontSize:50, color: Colors.white))),
              //       onPressed: () {
              //         setState(() {
              //           // istapped = 'Button tapped';
              //         });
              //       },
              //       child: const Text('Write')),
              // ),
              // const SizedBox(height: 20),
              //====================================================================

              // Text(
              //   // istapped,
              //   // textScaleFactor: 2,
              // )
            ],
          )),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: ,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
