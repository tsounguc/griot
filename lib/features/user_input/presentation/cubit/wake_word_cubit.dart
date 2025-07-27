import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:griot/features/user_input/domain/use_cases/listen_for_wake_word.dart';
import 'package:griot/features/voice_interface/domain/use_cases/speak_response.dart';

part 'wake_word_state.dart';

class WakeWordCubit extends Cubit<WakeWordState> {
  WakeWordCubit({
    required ListenForWakeWord listenForWakeWord,
    required SpeakResponse speakResponse,
  }) : _listenForWakeWord = listenForWakeWord,
       _speakResponse = speakResponse,
       super(WakeWordInitial());

  final ListenForWakeWord _listenForWakeWord;
  final SpeakResponse _speakResponse;

  Future<void> startListening() async {
    emit(const WakeWordListening());

    final result = await _listenForWakeWord.call(() async {
      emit(const WakeWordHeard());
      await _speakResponse.call('Yes? How can I help you?');
    });

    result.fold(
      (failure) => emit(WakeWordError(failure.message)),
      (_) => null, // already handled by callback
    );
  }
}
