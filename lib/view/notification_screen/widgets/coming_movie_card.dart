import 'package:flutter/material.dart';

class ComingMovieCard extends StatelessWidget {
  const ComingMovieCard({
    super.key,
    required this.url,
    required this.title,
    required this.review,
    required this.genre,
  });

  final String url;
  final String title;
  final String review;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          fit: BoxFit.fitWidth,
          url,
          height: 195,
          width: 375,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Icon(
                  Icons.notifications,
                  size: 24,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Remind Me',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            ),
            SizedBox(
              width: 45,
            ),
            Column(
              children: [
                Icon(
                  Icons.share,
                  size: 24,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Share',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'season 1 coming December 14',
                style: TextStyle(color: Colors.white.withOpacity(.8)),
              ),
              SizedBox(
                height: 13.75,
              ),
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18.66),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                review,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white.withOpacity(.83),
                  fontSize: 11,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  genre,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 11.4),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
