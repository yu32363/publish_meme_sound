import 'package:audioplayers/audioplayers.dart';

/// Singleton class to manage audio playback across the app
class AudioService {
  AudioService._();
  static final AudioService instance = AudioService._();

  final AudioPlayer _player = AudioPlayer();

  /// Get the current player instance
  AudioPlayer get player => _player;

  /// Play a sound from assets
  Future<void> playSound(String soundFileName) async {
    try {
      await _player.play(AssetSource(soundFileName));
    } catch (e) {
      // Handle error silently in production
      // In development, you might want to log this
    }
  }

  /// Stop currently playing sound
  Future<void> stopSound() async {
    try {
      await _player.stop();
    } catch (e) {
      // Handle error silently
    }
  }

  /// Pause currently playing sound
  Future<void> pauseSound() async {
    try {
      await _player.pause();
    } catch (e) {
      // Handle error silently
    }
  }

  /// Resume paused sound
  Future<void> resumeSound() async {
    try {
      await _player.resume();
    } catch (e) {
      // Handle error silently
    }
  }

  /// Check if audio is currently playing
  bool get isPlaying => _player.state == PlayerState.playing;

  /// Check if audio is paused
  bool get isPaused => _player.state == PlayerState.paused;

  /// Dispose resources when app is closing
  Future<void> dispose() async {
    await _player.dispose();
  }
}
