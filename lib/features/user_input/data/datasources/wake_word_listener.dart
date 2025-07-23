abstract class WakeWordListener {
  Future<void> startListening(Function onWakeWordDetected);
}

class WakeWordListenerImpl implements WakeWordListener {
  @override
  Future<void> startListening(Function onWakeWordDetected) {
    // TODO: implement startListening
    throw UnimplementedError();
  }
}
