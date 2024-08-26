import 'package:flutter/material.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Smart Downloads',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Text(
              'Introducing Downloads For You',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 12.35),
            Text(
              textAlign: TextAlign.justify,
              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam''',
              style: TextStyle(
                  fontSize: 14.7,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 88,
              backgroundColor: Color(0xfe424242),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 353,
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  'Set Up',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
