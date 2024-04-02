import 'package:flutter/material.dart';
import 'package:flutter_getx/getx/getx_toggle_buttons/model.dart';
import 'package:flutter_getx/getx/getx_toggle_buttons/view_model.dart';
import 'package:get/get.dart';

class ToggleButtonsScreen extends StatelessWidget {
  ToggleButtonsScreen({super.key});

  final TBController c = Get.put(TBController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle Buttons Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => ToggleButtons(
                onPressed: c.onPressed,
                isSelected: c.selectedFruits,
                children: fruits,
              ),
            ),
            Obx(
              () => Text('Fruit: ${c.fruitSort}'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.removeData,
        child: const Icon(Icons.restart_alt),
      ),
    );
  }
}
