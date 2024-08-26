import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';
import 'package:netflix_clone/view/dummy_db.dart';
import 'package:netflix_clone/view/search_screen/widgets/search_screen_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.mainBlack,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Search for movies , plays and other genres ..',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                  border: InputBorder.none,
                  fillColor: Colors.grey,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[700],
                  ),
                  suffixIcon: Icon(
                    Icons.mic,
                    color: Colors.grey[700],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 21),
              child: Text(
                'Top Searches',
                style: TextStyle(
                    fontSize: 26.75,
                    color: Colors.white,
                    letterSpacing: -1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => SearchScreenCard(
                        image: DummyDb.movieList[index]['url'],
                        title: DummyDb.movieList[index]['title'],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 3,
                      ),
                  itemCount: DummyDb.movieList.length),
            )
          ],
        ),
      ),
    );
  }
}
