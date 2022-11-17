import 'package:counter_7/pages/_drawer.dart';
import 'package:counter_7/pages/budgetClass.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/tambahBudget.dart';
import 'package:counter_7/pages/dataBudget.dart';

class dataBudget extends StatefulWidget {
  const dataBudget({super.key});

  @override
  State<dataBudget> createState() => _dataBudget();
}

class _dataBudget extends State<dataBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Budget"),
      ),
      drawer: const drawerApp(),
      body: Padding(padding: const EdgeInsets.all(7.0), child: Text("aku")),
    );
  }
}
