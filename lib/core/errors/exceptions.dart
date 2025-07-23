import 'package:equatable/equatable.dart';

/// **Base class for all user input-related exceptions.**
abstract class UserInputException extends Equatable implements Exception {
  const UserInputException({required this.message, required this.statusCode});

  final String message;
  final String statusCode;

  @override
  List<Object?> get props => [message, statusCode];
}

/// **Exception thrown during wake word errors.**
class WakeWordException extends UserInputException {
  const WakeWordException({
    required super.message,
    required super.statusCode,
  });
}
