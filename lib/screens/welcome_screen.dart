import 'package:flashchat/screens/registration_screen.dart';
import 'package:flutter/material.dart';

import '../components/loginregisterbutton.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcomescreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller!, curve: Curves.decelerate);
    controller?.forward();

    controller?.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('images/logo.png'),
                      height: controller!.value * 100,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Flash Chat',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            TextFiledarea(
                kloginreisterbuttoncolor: Colors.greenAccent,
                kloginreisterbuttontext: 'Log In',
                onpressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                }),
            TextFiledarea(
                kloginreisterbuttoncolor: Colors.blueAccent,
                kloginreisterbuttontext: 'Register',
                onpressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                }),
          ],
        ),
      ),
    );
  }
}
