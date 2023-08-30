import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/counter_controller.dart';

class W4 extends StatelessWidget {
  const W4({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.find();
    return Container(
      color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () => counterController.decrement(),
              child: const Text('Decrease'))
        ],
      ),
    );
  }
}
