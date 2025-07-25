import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:griot/core/services/service_locator.dart';
import 'package:griot/features/user_input/presentation/cubit/wake_word_cubit.dart';
import 'package:griot/home_screen.dart';

void main() async {
  await dotenv.load();
  WidgetsFlutterBinding.ensureInitialized();
  await setUpServices();
  runApp(const GriotApp());
}

class GriotApp extends StatelessWidget {
  const GriotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => serviceLocator<WakeWordCubit>()..startListening(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
