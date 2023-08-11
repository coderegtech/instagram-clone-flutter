import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app_clone/pages/home_page.dart';
import './profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  List pages = [
    HomePage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    ProfilePage(),
  ];

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: changePage,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house_outlined,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.instagram,
                size: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.heart,
                size: 20,
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              size: 20,
            ),
            label: "",
          )
        ],
      ),
    );
  }
}
