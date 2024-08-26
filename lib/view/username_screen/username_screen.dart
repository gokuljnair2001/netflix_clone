import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/image_constant.dart';
import 'package:netflix_clone/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:netflix_clone/view/dummy_db.dart';
import 'package:netflix_clone/view/global_widgets/user_name_card.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          ImageConstant.LOGO,
          height: 37,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.edit,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
      body: Center(
        child: GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 75),
            itemCount: DummyDb.userList.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 121,
                mainAxisSpacing: 22,
                crossAxisSpacing: 25,
                crossAxisCount: 2),
            itemBuilder: (context, index) => index < DummyDb.userList.length
                ? UserNameCard(
                    image: DummyDb.userList[index]['imagepath'],
                    userName: DummyDb.userList[index]['username'],
                    onCardTapped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavBar(),
                          ));
                    },
                  )
                : UserNameCard(
                    image: ImageConstant.ADD,
                    userName: "Add User",
                    onCardTapped: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(' feature not available'),
                        behavior: SnackBarBehavior.floating,
                        duration: Duration(seconds: 3),
                      ));
                    },
                  )),
      ),
    );
  }
}
