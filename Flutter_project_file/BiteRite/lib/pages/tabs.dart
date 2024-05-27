import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/message.dart';
import './tabs/profile.dart';


class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _page = const[
    Homepage(),
    Messagepage(),
    Profilepage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xffFF9B50),
        selectedLabelStyle: const TextStyle(fontWeight:FontWeight.bold),
        //unselectedLabelStyle: const TextStyle(fontWeight:FontWeight.bold),
        selectedIconTheme: const IconThemeData(size: 28),
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {

           _currentIndex=index;

          });
        },
        
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
            ),

          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: "Message"),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_sharp),
            label: "Profile")

           
        ],),

    );
  }
}


