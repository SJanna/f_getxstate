import 'package:f_getxstate_demo/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class W1 extends StatelessWidget {
  const W1({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.find();
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(counterController.counterValue.toString())),
          ElevatedButton(
              onPressed: () => counterController.increment(),
              child: const Text('Increment'))
        ],
      ),
    );
  }
}
