import 'package:dglasses/sign-in/components/login-button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'components/custom-textfield.dart';

class SignInPage extends StatelessWidget {
  SignInPage({@required this.onSignIn});
  final Function(User) onSignIn;
  Future<void> _signInAnon() async {
    try {
      final user = await FirebaseAuth.instance.signInAnonymously();
      onSignIn(user.user);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blueAccent, Colors.blue],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                    height: 50,
                    child: Image.asset('assets/images/user-icon.png')),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    CustomTextField(
                      text: "Name",
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      text: "Password",
                    )
                  ],
                ),
                SizedBox(height: 20),
                LoginButton(),
                SizedBox(height: 10),
                Text("or"),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: _signInAnon,
                      child: Container(
                          height: 70,
                          child: Image.asset('assets/images/google-icon.png')),
                    ),
                    Container(
                        height: 70,
                        child: Image.asset('assets/images/facebook-icon.png')),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(height: 40),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "dont have an account?",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        "Signup",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
