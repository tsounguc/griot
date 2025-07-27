import 'package:griot/core/usecases/usecase.dart';
import 'package:griot/core/utils/type_defs.dart';
import 'package:griot/features/voice_interface/domain/repostories/voice_responder_repository.dart';

class SpeakResponse extends UseCaseWithParams<void, String> {
  const SpeakResponse(this.repository);

  final VoiceResponderRepository repository;

  @override
  ResultVoid call(String params) => repository.speak(params);
}
