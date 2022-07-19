import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    final homeC = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Text("Latihan 1"),
          SizedBox(width: 5),
          Text("Latihan 1")
        ]),
        leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () => homeC.kirim(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout_outlined),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: homeC.inputan1,
              decoration: InputDecoration(
                hintText: "Text 1",
              ),
            ),
            TextField(
              readOnly: true,
              controller: homeC.inputan2,
              decoration: InputDecoration(
                hintText: "Text 2",
              ),
            ),
            Obx(() => Text("nanti Outputnya disini ${homeC.tmpInputan.value}")),
            SizedBox(height: 5,),
            // Text("nanti Outputnya disini ${homeC.tmpInputan.value}"),
          ],
        ),
      ),
    );
  }
}
