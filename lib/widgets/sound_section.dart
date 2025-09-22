import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../widgets/sound_button.dart';

/// Data class for sound button configuration
class SoundData {
  final int soundNumber;
  final IconData icon;
  final String label;

  const SoundData(this.soundNumber, this.icon, this.label);
}

/// Reusable widget for displaying a section of sound buttons
class SoundSection extends StatelessWidget {
  final String title;
  final List<SoundData> sounds;

  const SoundSection({
    super.key,
    required this.title,
    required this.sounds,
  });

  @override
  Widget build(BuildContext context) {
    // Group sounds into rows of 3
    List<List<SoundData>> rows = [];
    for (int i = 0; i < sounds.length; i += 3) {
      rows.add(
          sounds.sublist(i, (i + 3 > sounds.length) ? sounds.length : i + 3));
    }

    return Column(
      children: [
        Text(
          title,
          style: AppTextStyles.sectionHeader,
        ),
        const SizedBox(height: AppDimensions.sectionSpacing),
        ...rows.map((row) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: row
                      .map((soundData) => SoundButton(
                            soundNumber: soundData.soundNumber,
                            icon: soundData.icon,
                            label: soundData.label,
                          ))
                      .toList(),
                ),
                const SizedBox(height: AppDimensions.sectionSpacing),
              ],
            )),
      ],
    );
  }
}
