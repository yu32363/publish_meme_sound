import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/sound_section.dart';

/// Items and objects sounds page
class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SoundSection(
          title: 'Items',
          sounds: const [
            SoundData(24, FontAwesomeIcons.handFist, 'Punch'),
            SoundData(25, FontAwesomeIcons.gavel, 'Toy'),
            SoundData(26, FontAwesomeIcons.cat, 'Cat'),
            SoundData(27, FontAwesomeIcons.camera, 'Camera'),
            SoundData(28, FontAwesomeIcons.bitcoin, 'Coin'),
            SoundData(29, FontAwesomeIcons.sketch, 'Crystal'),
            SoundData(30, FontAwesomeIcons.ankh, 'Blessing'),
            SoundData(31, FontAwesomeIcons.martiniGlassEmpty, 'Glass'),
            SoundData(32, FontAwesomeIcons.solidCircleXmark, 'Sensor'),
            SoundData(33, FontAwesomeIcons.radiation, 'Alert'),
            SoundData(34, FontAwesomeIcons.school, 'Bell'),
            SoundData(35, FontAwesomeIcons.bomb, 'Bomb'),
          ],
        ),
      ],
    );
  }
}
