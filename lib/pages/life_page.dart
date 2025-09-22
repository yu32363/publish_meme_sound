import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/constants.dart';
import '../widgets/sound_section.dart';

/// Life moments and scary sounds page
class LifePage extends StatelessWidget {
  const LifePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SoundSection(
          title: 'Moment',
          sounds: const [
            SoundData(1, FontAwesomeIcons.personWalking, 'Walk'),
            SoundData(2, FontAwesomeIcons.userSecret, 'Mafia'),
            SoundData(3, FontAwesomeIcons.ghost, 'Alien'),
            SoundData(4, FontAwesomeIcons.shoePrints, 'Sneak'),
            SoundData(5, FontAwesomeIcons.solidFaceSadCry, 'Sad'),
            SoundData(6, FontAwesomeIcons.solidFaceSadTear, 'Tear'),
          ],
        ),
        const SizedBox(height: AppDimensions.sectionSpacing),
        Divider(
          color: AppColors.surface,
          thickness: AppDimensions.dividerThickness,
          indent: AppDimensions.dividerIndent,
          endIndent: AppDimensions.dividerIndent,
        ),
        SoundSection(
          title: 'Scary',
          sounds: const [
            SoundData(7, FontAwesomeIcons.solidFaceDizzy, 'Shocked'),
            SoundData(8, FontAwesomeIcons.solidFaceFrownOpen, 'Scary'),
            SoundData(9, FontAwesomeIcons.spaghettiMonsterFlying, 'Monster'),
            SoundData(10, FontAwesomeIcons.personRunning, 'Run'),
            SoundData(11, FontAwesomeIcons.personBiking, 'Fast'),
            SoundData(36, FontAwesomeIcons.userNinja, 'Ninja'),
          ],
        ),
      ],
    );
  }
}
