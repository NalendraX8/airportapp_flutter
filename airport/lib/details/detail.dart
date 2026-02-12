import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          Stack(
            Container(
      width: 200,
      height: 200,
      color: Colors.blue, // Paling bawah
    ),
    Container(
      width: 150,
      height: 150,
      color: Colors.red, // Di atas biru
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.green, // Paling atas
    ),
          ),
        )
    );
  }
}