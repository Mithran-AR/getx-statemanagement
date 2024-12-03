import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'countclr.dart';

void main() {
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Countcontroler c = Get.put(Countcontroler());
    return Scaffold(
      body: Center(
        child: Obx((){
          return Text("${c.count}");
        }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        c.increment();
      },child: Text("+"),),

    );
  }
}
class D extends StatefulWidget {
  const D({super.key});


  @override
  State<D> createState() => _DState();
}

class _DState extends State<D> {
  final Countcontroler c = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("${c.count}"),
      ),
    );
  }
}




