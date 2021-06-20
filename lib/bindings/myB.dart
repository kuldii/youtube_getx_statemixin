import 'package:get/get.dart';

import '../controllers/myC.dart';

class MyB implements Bindings {
  @override
  void dependencies() {
    Get.put(MyC());
  }
}
