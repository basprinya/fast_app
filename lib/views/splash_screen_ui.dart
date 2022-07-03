import 'package:fast_app/views/home_ui.dart';
import 'package:flutter/material.dart';

class SplashScreenUI extends StatefulWidget {
  SplashScreenUI({Key? key}) : super(key: key);

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => HomeUI()),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/images/icon.png'),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'โทรด่วน',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            CircularProgressIndicator(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ],
        ),
      ),
    );
  }
}
