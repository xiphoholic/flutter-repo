import 'package:flutter/widgets.dart';
import "package:get/get.dart";
import "package:flutter/material.dart";

class HomeController extends GetxController {
  late TextEditingController inputan1, inputan2;
  var tmpInputan = "".obs;

  @override
  void onInit() {
    super.onInit();
    inputan1 = TextEditingController();
    inputan2 = TextEditingController();
  }

  void kirim() {
    inputan2.text = inputan1.text;
    tmpInputan.value = inputan1.text;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
