import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:griot/features/user_input/domain/use_cases/listen_for_wake_word.dart';

part 'wake_word_state.dart';

class WakeWordCubit extends Cubit<WakeWordState> {
  WakeWordCubit({
    required ListenForWakeWord listenForWakeWord,
  }) : _listenForWakeWord = listenForWakeWord,
       super(WakeWordInitial());

  final ListenForWakeWord _listenForWakeWord;

  Future<void> startListening() async {
    emit(const WakeWordListening());

    final result = await _listenForWakeWord.call(() {
      emit(const WakeWordHeard());
    });

    result.fold(
      (failure) => emit(WakeWordError(failure.message)),
      (_) => null, // already handled by callback
    );
  }
}
