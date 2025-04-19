import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';

class SplashScreenTask extends StatefulWidget {
  const SplashScreenTask({super.key});

  @override
  State<SplashScreenTask> createState() => _SplashScreenTaskState();
}

class _SplashScreenTaskState extends State<SplashScreenTask> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginTask() )
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // white background like your image
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              child: Image.asset('assets/ubi.jpg'),
            ),
            SizedBox(height: 20),

            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'UBI',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'ATTENDANCE',
                    style: TextStyle(color: Colors.teal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
