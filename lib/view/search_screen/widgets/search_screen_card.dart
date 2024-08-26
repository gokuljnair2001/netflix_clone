import 'package:flutter/material.dart';

class SearchScreenCard extends StatelessWidget {
  const SearchScreenCard({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      decoration: BoxDecoration(color: Colors.grey),
      child: Row(
        children: [
          Image.network(
            fit: BoxFit.cover,
            image,
            height: 76,
            width: 145,
          ),
          SizedBox(width: 21),
          Text(
            title,
            style: TextStyle(fontSize: 14.73, color: Colors.white),
          ),
          Spacer(),
          Icon(
            Icons.play_circle_outline,
            size: 28,
          )
        ],
      ),
    );
  }
}
