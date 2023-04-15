import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sumke extends StatefulWidget {
  const Sumke({super.key});

  @override
  State<Sumke> createState() => _SumkeState();
}

class _SumkeState extends State<Sumke> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Soat")),);
  }
}