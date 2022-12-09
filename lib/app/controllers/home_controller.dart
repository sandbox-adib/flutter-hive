import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeController extends GetxController {
  var box = Hive.box('box');
  var darkMode = false.obs;
  @override
  void onInit() {
    darkMode.value = box.get('darkMode');
    super.onInit();
  }

  changeDarkMode(bool value) async {
    box.put('darkMode', value);
    darkMode.value = value;
  }
}
