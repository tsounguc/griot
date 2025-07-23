import 'package:griot/core/usecases/usecase.dart';
import 'package:griot/core/utils/type_defs.dart';
import 'package:griot/features/user_input/domain/repositories/user_input_repository.dart';

class ListenForWakeWord extends UseCaseWithParams<void, Function> {
  const ListenForWakeWord(this.repository);
  final UserInputRepository repository;
  @override
  ResultFuture<void> call(Function params) => repository.listenForWakeWord(params);
}
