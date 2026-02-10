import 'package:flutter/material.dart';
import 'package:airport/start/startPage.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';  


class SplashPlane extends StatefulWidget {
  const SplashPlane({super.key});

  @override
  State<SplashPlane> createState() => _SplashPlaneState();
}

class _SplashPlaneState extends State<SplashPlane> {

  //Timer 5 detik ke StartPage
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const StartPage()),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/flight.png',
            width: 200,
            height: 200,
            ),
            const SizedBox(height: 16),
            Text('N G A W I   A I R P O R T', 

            //Disini font global nya di ganti pake poppins 
            style:
            GoogleFonts.poppins(
              fontSize: 24, 
              fontWeight: FontWeight.bold, 
              color: Colors.black)),
          ],
        ),
      ),
    );
  }
}