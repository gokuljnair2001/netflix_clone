import 'package:flutter/material.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      height: 65,
      decoration: BoxDecoration(color: Colors.grey),
      child: Row(
        children: [
          Image.network(
            fit: BoxFit.cover,
            'https://i.pinimg.com/236x/0c/ea/5b/0cea5b9b1ebd0e31657d79a2b1211dec.jpg',
            height: 55,
            width: 113,
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Arival',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
              Text(
                'EL Chapo',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Nov 6',
                style: TextStyle(
                    color: Colors.white.withOpacity(.4),
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
