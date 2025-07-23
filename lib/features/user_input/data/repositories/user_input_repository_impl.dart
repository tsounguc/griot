import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:griot/core/errors/exceptions.dart';
import 'package:griot/core/errors/failures.dart';
import 'package:griot/core/utils/type_defs.dart';
import 'package:griot/features/user_input/data/datasources/wake_word_listener.dart';
import 'package:griot/features/user_input/domain/repositories/user_input_repository.dart';

class UserInputRepositoryImpl implements UserInputRepository {
  UserInputRepositoryImpl(this.wakeWordListener);

  final WakeWordListener wakeWordListener;

  @override
  ResultVoid listenForWakeWord(Function onWakeWordDetected) async {
    try {
      final result = await wakeWordListener.startListening(onWakeWordDetected);
      return Right(result);
    } on WakeWordException catch (e, s) {
      debugPrintStack(label: e.message, stackTrace: s);
      return Left(WakeWordFailure.fromException(e));
    }
  }
}
