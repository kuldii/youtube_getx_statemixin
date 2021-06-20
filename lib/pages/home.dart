import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/myC.dart';

class HomePage extends GetView<MyC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME PAGE"),
      ),
      body: Center(
        child: controller.obx(
          (state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("id : ${state!["id"]}"),
              Text("Nama : ${state["first_name"] + state["last_name"]}"),
              Text("Email : ${state["email"]}"),
              Image.network("${state['avatar']}"),
            ],
          ),
          onLoading: Text("Loading..."),
          onEmpty: Text("Belum ada data"),
          onError: (error) => Text(error.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.getData(),
      ),
    );
  }
}
