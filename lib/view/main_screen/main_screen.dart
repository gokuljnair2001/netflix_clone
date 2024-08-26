import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/image_constant.dart';
import 'package:netflix_clone/view/methods/custom_poster_builder.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 415,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.MOVIE1),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 415,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(ImageConstant.NLOGO),
                          Text(
                            'Movies',
                            style:
                                TextStyle(color: Colors.white, fontSize: 17.2),
                          ),
                          Text(
                            'My List',
                            style:
                                TextStyle(color: Colors.white, fontSize: 17.2),
                          ),
                          Text(
                            'Movies',
                            style:
                                TextStyle(color: Colors.white, fontSize: 17.2),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageConstant.TOP10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '#2 in Nigeria',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.add,
                    size: 29,
                    color: Colors.white,
                  ),
                  Text(
                    'My List',
                    style: TextStyle(fontSize: 13.6, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                width: 42,
              ),
              Container(
                width: 110,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                        size: 30,
                      ),
                      Text(
                        'Play',
                        style: TextStyle(
                            fontSize: 20.46, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 42,
              ),
              Column(
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 29,
                    color: Colors.white,
                  ),
                  Text(
                    'info',
                    style: TextStyle(fontSize: 20.4, color: Colors.white),
                  )
                ],
              )
            ],
          ),
          CustomPosterBuilder(
            title: 'Previews',
            isCircle: true,
          ),
          CustomPosterBuilder(
            title: 'Continue Watching For Gokul',
            isVisible: true,
          ),
          CustomPosterBuilder(
            title: 'Popular On Netflix',
          ),
        ],
      ),
    );
  }
}
