import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sign-in/sign-in-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "D-glasses",
      home: SignInPage(),
      theme: ThemeData(
        // Define the default brightness and colors.

        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
