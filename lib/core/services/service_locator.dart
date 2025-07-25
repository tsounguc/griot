import 'package:get_it/get_it.dart';
import 'package:griot/features/user_input/data/datasources/wake_word_listener.dart';
import 'package:griot/features/user_input/data/repositories/user_input_repository_impl.dart';
import 'package:griot/features/user_input/domain/repositories/user_input_repository.dart';
import 'package:griot/features/user_input/domain/use_cases/listen_for_wake_word.dart';
import 'package:griot/features/user_input/presentation/cubit/wake_word_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'service_locator.main.dart';
