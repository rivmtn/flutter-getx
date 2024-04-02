import 'package:flutter/material.dart';
import 'package:get/get.dart';

const List<String> numbers = ['Zero', 'One', 'Two', 'Three'];

class DropdownButtonController extends GetxController {
  RxString selectedValue = numbers.first.obs;

  void onChanged(String? value) {
    selectedValue.value = value ?? '';
  }

  void removeData(){
    selectedValue.value = numbers.first;
  }
}

class DropdownButtonScreen extends StatelessWidget {
  final DropdownButtonController c = Get.put(DropdownButtonController());

  DropdownButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Button Screen'),
      ),
      body: Center(
        child: Obx(
          () => DropdownButton<String>(
            isExpanded: true,
            // value: c.selectedValue.value,
            value: c.selectedValue.value,
            items: numbers.map(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
            onChanged: c.onChanged,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.removeData,
        child: const Icon(Icons.restart_alt),
      ),
    );
  }
}
