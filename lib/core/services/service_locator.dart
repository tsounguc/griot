import 'package:flutter_tts/flutter_tts.dart';
import 'package:get_it/get_it.dart';
import 'package:griot/features/user_input/data/datasources/wake_word_listener.dart';
import 'package:griot/features/user_input/data/repositories/user_input_repository_impl.dart';
import 'package:griot/features/user_input/domain/repositories/user_input_repository.dart';
import 'package:griot/features/user_input/domain/use_cases/listen_for_wake_word.dart';
import 'package:griot/features/user_input/presentation/cubit/wake_word_cubit.dart';
import 'package:griot/features/voice_interface/data/datasource/voice_responder.dart';
import 'package:griot/features/voice_interface/data/respositories/voice_responder_repository_impl.dart';
import 'package:griot/features/voice_interface/domain/repostories/voice_responder_repository.dart';
import 'package:griot/features/voice_interface/domain/use_cases/speak_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'service_locator.main.dart';
