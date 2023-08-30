import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/counter_controller.dart';

class W2 extends StatelessWidget {
  const W2({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.find();

    return Container(
      color: Colors.deepOrange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(counterController.counterValue.toString())),
          ElevatedButton(
              onPressed: () => counterController.reset(),
              child: const Text('Reset'))
        ],
      ),
    );
  }
}
