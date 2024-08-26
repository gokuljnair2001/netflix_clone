import 'package:flutter/material.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard({
    super.key,
    required this.image,
    required this.userName,
    this.onCardTapped,
    this.height,
    this.width,
  });

  final String image;
  final String userName;
  final double? height;
  final double? width;
  final void Function()? onCardTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTapped,
      child: Column(
        children: [
          Image.asset(image, width: width, height: height),
          Text(
            userName,
            style: TextStyle(color: Colors.white, height: 2),
          )
        ],
      ),
    );
  }
}
