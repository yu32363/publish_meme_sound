import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/constants.dart';
import '../widgets/sound_section.dart';

/// Voting and feedback sounds page
class VotePage extends StatelessWidget {
  const VotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SoundSection(
          title: 'Great',
          sounds: const [
            SoundData(12, FontAwesomeIcons.solidThumbsUp, 'Pass'),
            SoundData(13, FontAwesomeIcons.solidFaceGrinSquint, 'Yeah'),
            SoundData(14, FontAwesomeIcons.hands, 'Clap'),
            SoundData(15, FontAwesomeIcons.kickstarterK, 'OK'),
            SoundData(16, FontAwesomeIcons.solidFaceSurprise, 'Wow'),
            SoundData(17, FontAwesomeIcons.yahoo, 'Yahoo'),
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
          title: 'Fail',
          sounds: const [
            SoundData(18, FontAwesomeIcons.solidThumbsDown, 'Eliminated'),
            SoundData(19, FontAwesomeIcons.solidFaceFrown, 'Fail'),
            SoundData(20, FontAwesomeIcons.drum, 'Drum'),
            SoundData(21, FontAwesomeIcons.crow, 'Crow'),
            SoundData(22, FontAwesomeIcons.bug, 'Cricket'),
            SoundData(23, FontAwesomeIcons.beerMugEmpty, 'Belch'),
          ],
        ),
      ],
    );
  }
}
