import "dart:collection";
import 'package:flutter/material.dart';

class Budget {
  final String judul;
  final int jumlah;
  final String tipe;
  final String tanggal;

  Budget(
      {required this.judul,
      required this.jumlah,
      required this.tipe,
      required this.tanggal});
}

class BudgetClass extends ChangeNotifier {
  final List<Budget> _budget = [];
  UnmodifiableListView<Budget> get budgets => UnmodifiableListView(_budget);
  void addBudget(Budget budget) {
    _budget.add(budget);
  }
}
