import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/view/dummy_db.dart';
import 'package:netflix_clone/view/global_widgets/user_name_card.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 38,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: _buildUserSelectionSection(),
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Manage Profiles',
                  style: TextStyle(
                      fontSize: 14.7,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(.81)),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(top: 19, left: 16, right: 16),
              height: 247,
              color: Colors.grey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.message_outlined,
                        size: 24,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        'Tell friends about Netflix',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,''',
                    textAlign: TextAlign.justify,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _buildUserSelectionSection() {
    return Row(
      children: List.generate(
        DummyDb.userList.length + 1,
        (index) => index < DummyDb.userList.length
            ? Padding(
                padding: const EdgeInsets.only(right: 9),
                child: UserNameCard(
                    height: index == 0 ? 68 : 60,
                    width: index == 0 ? 73 : 65,
                    image: DummyDb.userList[index]['imagepath'],
                    userName: DummyDb.userList[index]['username']),
              )
            : Column(
                children: [
                  Container(
                    height: 60,
                    width: 65,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  Text('', style: TextStyle(color: Colors.white, height: 2)),
                ],
              ),
      ),
    );
  }
}
