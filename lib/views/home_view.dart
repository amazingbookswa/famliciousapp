import 'package:famliciousapp/views/Chat_view.dart';
import 'package:famliciousapp/views/favorite_view.dart';
import 'package:famliciousapp/views/profile_view.dart';
import 'package:famliciousapp/views/timeline_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

// ignore: camel_case_types
class homeview extends StatefulWidget {
  const homeview({Key? key}) : super(key: key);

  @override
  State<homeview> createState() => _homeviewState();
}

class _homeviewState extends State<homeview> {
  int CurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: CurrentIndex,
        children: [TimelineView(), ChatView(), FavoriteView(), ProfileView()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() {
          CurrentIndex = index;
        }),
        currentIndex: CurrentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(size: 40),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(UniconsSolid.clock_three), label: 'Tasks'),
          BottomNavigationBarItem(
              icon: Icon(UniconsSolid.comment_dots), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_fill), label: 'Profile'),
        ],
      ),
    );
  }
}
