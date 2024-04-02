import 'package:flutter/material.dart';
import 'package:flutter_getx/getx/getx_counter/view_model.dart';
import 'package:flutter_getx/getx/getx_dropdown_button/view.dart';
import 'package:flutter_getx/getx/getx_toggle_buttons/view.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text("Clicks: ${c.count}"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                "c.count : ${c.count}\ntype of c.count: ${c.count.runtimeType}")),
            ElevatedButton(
              child: const Text("Go to Other"),
              onPressed: () => Get.to(
                Other(),
              ),
            ),
            ElevatedButton(
              child: const Text("Go to ToggleButtonsScreen"),
              onPressed: () => Get.to(
                ToggleButtonsScreen(),
              ),
            ),ElevatedButton(
              child: const Text("Go to DropdownButtonScreen"),
              onPressed: () => Get.to(
                DropdownButtonScreen(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Other extends StatelessWidget {
  Other({super.key});

  final Controller c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other'),
      ),
      body: Center(
        child: Text("${c.count}"),
      ),
    );
  }
}
