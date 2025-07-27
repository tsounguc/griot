import 'package:flutter_tts/flutter_tts.dart';

abstract class VoiceResponder {
  Future<void> speak(String message);
}

class VoiceResponderImpl implements VoiceResponder {
  const VoiceResponderImpl(this._tts);
  final FlutterTts _tts;

  @override
  Future<void> speak(String message) async {
    await _tts.speak(message);
  }
}
