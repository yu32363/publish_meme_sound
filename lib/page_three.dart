import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meme_sound_app/const.dart';
import 'meme_sound.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              'Items',
              style: kHeaderText,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MemeSound(
                    sound: 24,
                    icon: FontAwesomeIcons.fistRaised,
                    label: 'Punch'),
                MemeSound(
                    sound: 25, icon: FontAwesomeIcons.gavel, label: 'Toy'),
                MemeSound(sound: 26, icon: FontAwesomeIcons.cat, label: 'Cat'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MemeSound(
                    sound: 27, icon: FontAwesomeIcons.camera, label: 'Camera'),
                MemeSound(
                    sound: 28, icon: FontAwesomeIcons.bitcoin, label: 'Coin'),
                MemeSound(
                    sound: 29, icon: FontAwesomeIcons.sketch, label: 'Crystal'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MemeSound(
                    sound: 30, icon: FontAwesomeIcons.ankh, label: 'Blessing'),
                MemeSound(
                    sound: 31,
                    icon: FontAwesomeIcons.glassMartini,
                    label: 'Glass'),
                MemeSound(
                    sound: 32,
                    icon: FontAwesomeIcons.solidTimesCircle,
                    label: 'Sensor'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MemeSound(
                    sound: 33,
                    icon: FontAwesomeIcons.radiation,
                    label: 'Alert'),
                MemeSound(
                    sound: 34, icon: FontAwesomeIcons.school, label: 'Bell'),
                MemeSound(
                    sound: 35, icon: FontAwesomeIcons.bomb, label: 'Bomb'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ],
    );
  }
}
