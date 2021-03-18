import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meme_sound_app/const.dart';
import 'meme_sound.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              'Great',
              style: kHeaderText,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MemeSound(
                    sound: 12,
                    icon: FontAwesomeIcons.solidThumbsUp,
                    label: 'Pass'),
                MemeSound(
                    sound: 13,
                    icon: FontAwesomeIcons.solidGrinSquint,
                    label: 'Yeah'),
                MemeSound(
                    sound: 14,
                    icon: FontAwesomeIcons.signLanguage,
                    label: 'Clap'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MemeSound(
                    sound: 15,
                    icon: FontAwesomeIcons.kickstarterK,
                    label: 'OK'),
                MemeSound(
                    sound: 16,
                    icon: FontAwesomeIcons.solidSurprise,
                    label: 'Wow'),
                MemeSound(
                    sound: 17, icon: FontAwesomeIcons.yahoo, label: 'Yahoo'),
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
              'Fail',
              style: kHeaderText,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MemeSound(
                    sound: 18,
                    icon: FontAwesomeIcons.solidThumbsDown,
                    label: 'Eliminated'),
                MemeSound(
                    sound: 19,
                    icon: FontAwesomeIcons.solidFrown,
                    label: 'Fail'),
                MemeSound(
                    sound: 20, icon: FontAwesomeIcons.drum, label: 'Drum'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MemeSound(
                    sound: 21, icon: FontAwesomeIcons.crow, label: 'Crow'),
                MemeSound(
                    sound: 22, icon: FontAwesomeIcons.bug, label: 'Cricket'),
                MemeSound(
                    sound: 23, icon: FontAwesomeIcons.beer, label: 'Belch'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
