import 'package:flutter/foundation.dart';

class CounterStore extends ChangeNotifier {
  static final CounterStore _counterStore = CounterStore._internal();
  factory CounterStore() => _counterStore;

  int counter = 0;

  CounterStore._internal() {
    print('Counter Store');
  }

  void incrementCounter() {
    counter++;
    notifyListeners();
  }
}