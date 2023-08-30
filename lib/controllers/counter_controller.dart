import 'package:get/get.dart';

class CounterController extends GetxController {
  final _counter = 0.obs;
  int get counterValue => _counter.value;
  void increment() => _counter.value++;
  void decrement() => _counter.value--;
  void reset() => _counter.value = 0;
}
