import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView {
  var box = Hive.box('box');
  var homeC = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          value: homeC.darkMode.value,
          onChanged: (val) {
            homeC.darkMode.value = val;
          },
        ),
      ),
    );
  }
}
