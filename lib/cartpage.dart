import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:state_management/my_controller.dart';
import 'package:state_management/total%20page.dart';
class MyCartPage extends StatelessWidget {
   MyCartPage({Key? key}) : super(key: key);
  final MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('BOOKS'),
                ElevatedButton(
                  onPressed: ()=>controller.bookIncrement(),
                  child: Icon(
                    Icons.add,
                  ),
                ),
                Obx(()=>Text("${controller.books.toString()}")),
                ElevatedButton(
                  onPressed: ()=>controller.bookdecrement(),
                  child: Icon(
                    Icons.minimize,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('PENS'),
                ElevatedButton(
                  onPressed: ()=>controller.penIncrement(),
                  child: Icon(
                    Icons.add,
                  ),
                ),
                Obx(()=>Text('${controller.pens.toString()}')),
                ElevatedButton(
                  onPressed: ()=>controller.penDecrement(),
                  child: Icon(
                    Icons.minimize,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: ()=>Get.to(()=>TotalPage()),
              child: Text('Total Page'),
            ),
          ],
        ),
      ),
    );
  }
}
