import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:griot/features/user_input/presentation/cubit/wake_word_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wake Word Listener')),
      body: Center(
        child: BlocBuilder<WakeWordCubit, WakeWordState>(
          builder: (context, state) {
            if (state is WakeWordListening) {
              return const Text('🎙️ Listening...');
            } else if (state is WakeWordHeard) {
              return const Text('🗣️ Wake word detected!');
            } else if (state is WakeWordError) {
              return Text('❌ Error: ${state.message}');
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
