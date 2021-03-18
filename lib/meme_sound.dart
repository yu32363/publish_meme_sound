import 'package:flutter/material.dart';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'const.dart';

// ignore: must_be_immutable
class MemeSound extends StatelessWidget {
  final assetsAudioPlayer = AssetsAudioPlayer();
  MemeSound({@required this.sound, @required this.icon, @required this.label});
  int sound;
  String label;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        assetsAudioPlayer.open(
          Audio('assets/sound$sound.wav'),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            color: kFourthColor,
            size: 50.0,
          ),
          Text(
            label,
            style: kTitleText,
          ),
        ],
      ),
    );
  }
}
