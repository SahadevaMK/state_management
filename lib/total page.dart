import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_management/my_controller.dart';

class TotalPage extends StatelessWidget {
   TotalPage({Key? key}) : super(key: key);
  MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${controller.sum.toString()}')),
            ElevatedButton(
                onPressed: ()=>Get.back(),
                child: Text('GO BACK')
            ),
          ],
        ),
      ),
    );
  }
}
