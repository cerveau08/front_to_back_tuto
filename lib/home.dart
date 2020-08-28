import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        Container(color: Colors.blue,),
        Container(color: Colors.red,),
        Container(color: Colors.yellow,),
        Container(color: Colors.green,),
      ][currentIndex],
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.black, 
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              width: 20,
              color: Colors.black54, 
              height: 20,
            ), 
            activeIcon: SvgPicture.asset(
              'assets/icons/home.svg',
              width: 20,
              color: Colors.black, 
              height: 20,
            ), 
            title: Text("Home")
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.black, 
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 20,
              color: Colors.black54, 
              height: 20,
            ), 
            activeIcon: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 20,
              color: Colors.black, 
              height: 20,
            ), 
            title: Text("Search")
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.black, 
            icon: SvgPicture.asset(
              'assets/icons/bookmark.svg',
              width: 20,
              color: Colors.black54, 
              height: 20,
            ), 
            activeIcon: SvgPicture.asset(
              'assets/icons/bookmark.svg',
              width: 20,
              color: Colors.black, 
              height: 10,
            ), 
            title: Text("Bookmarks")
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.black, 
            icon: Container(
              height: 20,width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/user.png')),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x5c000000),
                    offset: Offset(0,1),
                    blurRadius: 5
                  )
                ],
              ),
            ), title: Text("Profile")),
        ],
      ),
    );
  }
}