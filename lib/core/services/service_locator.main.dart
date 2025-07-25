part of 'service_locator.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> setUpServices() async {
  await _initUserInput();
}

Future<void> _initUserInput() async {
  final prefs = await SharedPreferences.getInstance();
  serviceLocator
    // App Logic
    ..registerFactory(
      () => WakeWordCubit(listenForWakeWord: serviceLocator()),
    )
    // Use cases
    ..registerLazySingleton(() => ListenForWakeWord(serviceLocator()))
    // Repositories
    ..registerLazySingleton<UserInputRepository>(
      () => UserInputRepositoryImpl(serviceLocator()),
    )
    // Data Source
    ..registerLazySingleton<WakeWordListener>(
      WakeWordListenerImpl.new,
    )
    // External dependencies
    ..registerLazySingleton(() => prefs);
}
