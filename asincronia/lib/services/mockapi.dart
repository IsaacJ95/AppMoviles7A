import 'dart:math';

class MockApi {
  /// Singleton pattern used here.
  static final MockApi _mockapi = MockApi._internal();

  factory MockApi() {
    return _mockapi;
  }

  MockApi._internal();

  Future<int> _getInteger(int delayInSeconds) {
    return Future.delayed(
      Duration(seconds: delayInSeconds),
      () => 1 + Random().nextInt(100),
    );
  }

  Future<int> getFerrariInteger() async {
    return _getInteger(1);
  }

  Future<int> getHyundaiInteger() async {
    return _getInteger(3);
  }

  Future<int> getFisherPriceInteger() async {
    return _getInteger(10);
  }
}
