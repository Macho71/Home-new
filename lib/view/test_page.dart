import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui/service/home_service.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FloatingActionButton(onPressed: (() {
            StatusService.getSTatus();
            Text("1");
          })),
          FloatingActionButton(onPressed: (() {
            StatusService.getProfile();
            Text("2");
          }))
        ],
      ),
    );
  }
}
