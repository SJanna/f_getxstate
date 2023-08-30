import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/counter_controller.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(counterController.counterValue.toString())),
            ElevatedButton(
                onPressed: () => counterController.increment(),
                child: const Text('Increment'))
          ],
        ),
      ),
    );
  }
}
