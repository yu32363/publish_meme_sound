import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/constants.dart';
import '../services/audio_service.dart';
import 'life_page.dart';
import 'vote_page.dart';
import 'items_page.dart';

/// Main home page with bottom navigation
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1; // Start with Vote page (main sounds)

  static const List<Widget> _pages = [
    LifePage(),
    VotePage(),
    ItemsPage(),
  ];

  void _onBottomNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _stopAllSounds() {
    AudioService.instance.stopSound();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meme Sound',
          style: AppTextStyles.appBarTitle,
        ),
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.circleStop),
            onPressed: _stopAllSounds,
            tooltip: 'Stop Sound',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimensions.defaultPadding),
          child: _pages[_selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onBottomNavTapped,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.music),
            label: 'Life',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.solidThumbsUp),
            label: 'Vote',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.drum),
            label: 'Items',
          ),
        ],
      ),
    );
  }
}
