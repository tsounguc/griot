import 'package:griot/core/utils/type_defs.dart';

abstract class UserInputRepository {
  ResultVoid listenForWakeWord(Function onWakeWordDetected);
}
