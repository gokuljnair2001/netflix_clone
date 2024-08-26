import 'package:flutter/material.dart';

class CustomPosterBuilder extends StatelessWidget {
  const CustomPosterBuilder(
      {super.key,
      this.isCircle = false,
      this.height = 177,
      this.width = 102,
      this.isVisible = false,
      required this.title});
  final bool isCircle;
  final double width;
  final double height;
  final bool isVisible;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 23),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: isCircle ? width : height,
          child: ListView.separated(
              padding: EdgeInsets.all(7),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                    width: 103,
                    decoration: BoxDecoration(
                      shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    child: Visibility(
                      visible: isVisible,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 3,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(color: Colors.grey),
                            child: Container(
                              height: 3,
                              width: 35,
                              decoration: BoxDecoration(color: Colors.red),
                            ),
                          ),
                          Container(
                            color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                  size: 24,
                                ),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 24,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(width: 7),
              itemCount: 10),
        )
      ],
    );
  }
}
