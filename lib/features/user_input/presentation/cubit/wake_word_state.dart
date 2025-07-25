part of 'wake_word_cubit.dart';

sealed class WakeWordState extends Equatable {
  const WakeWordState();

  @override
  List<Object> get props => [];
}

final class WakeWordInitial extends WakeWordState {}

class WakeWordListening extends WakeWordState {
  const WakeWordListening();
}

class WakeWordHeard extends WakeWordState {
  const WakeWordHeard();
}

class WakeWordError extends WakeWordState {
  const WakeWordError(this.message);
  final String message;

  @override
  List<Object> get props => [message];
}
