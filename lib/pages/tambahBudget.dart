import 'package:counter_7/pages/_drawer.dart';
import 'package:counter_7/pages/budgetClass.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/tambahBudget.dart';
import 'package:counter_7/pages/dataBudget.dart';

class tambahBudget extends StatefulWidget {
  const tambahBudget({super.key});

  @override
  State<tambahBudget> createState() => _tambahBudget();
}

class _tambahBudget extends State<tambahBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Form Budget"),
        ),
        drawer: const drawerApp(),
        body: Text("Form"));
  }
}
