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
      backgroundColor: const Color(0xff5C40CC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flight,
            size: 200,
            color: Colors.white,
            ),
            const SizedBox(height: 16),
            Text('A  I  R  P  L  A  N  E', 

            //Disini font global nya di ganti pake poppins 
            style:
            GoogleFonts.poppins(
              fontSize: 24, 
              fontWeight: FontWeight.bold, 
              color: Colors.white)),
          ],
        ),
      ),
    );
  }
}