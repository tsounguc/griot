import 'package:griot/core/utils/type_defs.dart';

abstract class VoiceResponderRepository {
  ResultVoid speak(String message);
}
