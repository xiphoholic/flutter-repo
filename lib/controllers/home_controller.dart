import 'package:flutter/widgets.dart';
import "package:get/get.dart";
import "package:flutter/material.dart";

import '../apis/todo_api.dart';

class HomeController extends GetxController {
  late TextEditingController inputan1, inputan2;
  var tmpInputan = "".obs;

  // Creator Tab Modal Form
  var creatorTodos = "".obs;

  Rx<List<DropdownMenuItem<String>>> cmbItemTodos =
      Rx<List<DropdownMenuItem<String>>>([]);

  @override
  void onInit() {
    super.onInit();
    inputan1 = TextEditingController();
    inputan2 = TextEditingController();
    // getTodos();
  }

  void kirim() {
    inputan2.text = inputan1.text;
    tmpInputan.value = inputan1.text;
  }

  void getTodos() {
    try {
      cmbItemTodos = Rx<List<DropdownMenuItem<String>>>([]);
      cmbItemTodos.value
          .add(const DropdownMenuItem(value: "", child: Text('Choose Item')));
      TodoApi().getTodo().then((value) async {
        if (value.statusCode == 200) {
          var data = await value.body;

          for (var v in await data) {
            cmbItemTodos.value.add(
              DropdownMenuItem(
                value: v["id"].toString(),
                child: Text(v["title"]),
              ),
            );
          }
          cmbItemTodos.refresh();
        }
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
