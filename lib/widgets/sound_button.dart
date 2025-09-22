import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/constants.dart';
import '../services/audio_service.dart';

/// A reusable widget for displaying and playing meme sounds
class SoundButton extends StatelessWidget {
  const SoundButton({
    super.key,
    required this.soundNumber,
    required this.icon,
    required this.label,
  });

  final int soundNumber;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _playSound(),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(AppDimensions.defaultPadding),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(
            icon,
            color: AppColors.surface,
            size: AppDimensions.iconSize,
          ),
          const SizedBox(height: 8.0),
          Text(
            label,
            style: AppTextStyles.soundButtonTitle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  void _playSound() {
    AudioService.instance.playSound('sound$soundNumber.wav');
  }
}
