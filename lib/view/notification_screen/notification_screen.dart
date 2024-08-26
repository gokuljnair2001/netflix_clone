import 'package:flutter/material.dart';
import 'package:netflix_clone/view/dummy_db.dart';
import 'package:netflix_clone/view/notification_screen/widgets/coming_movie_card.dart';
import 'package:netflix_clone/view/notification_screen/widgets/new_arrival_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 3,
            backgroundColor: Colors.red,
            child: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
              fontSize: 21.9, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: List.generate(
              2,
              (index) => NewArrivalCard(),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => ComingMovieCard(
              url: DummyDb.comingSoonList[index]['url'],
              title: DummyDb.comingSoonList[index]['moviename'],
              review: DummyDb.comingSoonList[index]['moviereview'],
              genre: DummyDb.comingSoonList[index]['moviegenre'],
            ),
            separatorBuilder: (context, index) => SizedBox(
              height: 17,
            ),
            itemCount: DummyDb.comingSoonList.length,
          )
        ],
      ),
    );
  }
}
