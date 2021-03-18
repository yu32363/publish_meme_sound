import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'const.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'page_three.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 1;

  static List<Widget> _widgetOptions = <Widget>[
    PageOne(),
    PageTwo(),
    PageThree(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondColor,
      appBar: AppBar(
        backgroundColor: kFirstColor,
        title: Text(
          'Meme Sound',
          style: kMenuText,
        ),
        actions: [
          IconButton(
              icon: FaIcon(
                FontAwesomeIcons.music,
                color: kSecondColor,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              })
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _widgetOptions.elementAt(_selectedIndex),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kFirstColor,
        selectedItemColor: kThirdColor,
        unselectedItemColor: kSecondColor,
        items: [
          BottomNavigationBarItem(
            backgroundColor: kSecondColor,
            icon: FaIcon(
              FontAwesomeIcons.music,
            ),
            label: 'Life',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.solidThumbsUp,
            ),
            label: 'Vote',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.drum,
            ),
            label: 'Items',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
