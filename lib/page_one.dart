import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meme_sound_app/const.dart';
import 'meme_sound.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              'Moment',
              style: kHeaderText,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MemeSound(
                    sound: 1, icon: FontAwesomeIcons.walking, label: 'Walk'),
                MemeSound(
                    sound: 2,
                    icon: FontAwesomeIcons.userSecret,
                    label: 'Mafia'),
                MemeSound(
                    sound: 3, icon: FontAwesomeIcons.ghost, label: 'Alien'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MemeSound(
                    sound: 4,
                    icon: FontAwesomeIcons.shoePrints,
                    label: 'Sneak'),
                MemeSound(
                    sound: 5, icon: FontAwesomeIcons.solidSadCry, label: 'Sad'),
                MemeSound(
                    sound: 6,
                    icon: FontAwesomeIcons.solidSadTear,
                    label: 'Tear'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
        Divider(
          color: kThirdColor,
          thickness: 1.0,
          indent: 15,
          endIndent: 15,
        ),
        Column(
          children: [
            Text(
              'Scary',
              style: kHeaderText,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MemeSound(
                    sound: 7,
                    icon: FontAwesomeIcons.solidDizzy,
                    label: 'Shocked'),
                MemeSound(
                    sound: 8,
                    icon: FontAwesomeIcons.solidFrownOpen,
                    label: 'Scary'),
                MemeSound(
                    sound: 9,
                    icon: FontAwesomeIcons.pastafarianism,
                    label: 'Monster'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MemeSound(
                    sound: 10, icon: FontAwesomeIcons.running, label: 'Run'),
                MemeSound(
                    sound: 11, icon: FontAwesomeIcons.biking, label: 'Fast'),
                MemeSound(
                    sound: 36,
                    icon: FontAwesomeIcons.userNinja,
                    label: 'Ninja'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
