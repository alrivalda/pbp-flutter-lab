import 'package:counter_7/pages/_drawer.dart';
import 'package:counter_7/model/budgetClass.dart';
import 'package:counter_7/pages/tambahBudget.dart';
import 'package:flutter/material.dart';

class addBudgetPage extends StatefulWidget {
  const addBudgetPage({super.key});

  @override
  State<addBudgetPage> createState() => _addBudgetState();
}

class _addBudgetState extends State<addBudgetPage> {
  List<Budget> _budget = [];
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _jumlah = 0;
  String _tipe = 'Pemasukan';
  final List<String> tipeList = ['Pemasukan', 'Pengeluaran'];

  DateTime? _date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Budget'),
        ),
        drawer: drawerApp(
          budget: _budget,
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Judul",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _judul = value!;
                        });
                      },
                      onSaved: (String? value) {
                        setState(() {
                          _judul = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Judul tidak boleh kosong!';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nominal",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _jumlah = int.parse(value!);
                        });
                      },
                      onSaved: (String? value) {
                        setState(() {
                          _jumlah = int.parse(value!);
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Nominal tidak boleh kosong!';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButton(
                          items: tipeList
                              .map((String item) => DropdownMenuItem<String>(
                                  child: Text(item), value: item))
                              .toList(),
                          onChanged: (String? value) {
                            setState(() {
                              _tipe = value!;
                            });
                          },
                          value: _tipe,
                        ),
                      ],
                    ),
                  ),
                  Text(_date == null
                      ? 'Nothing has been picked yet'
                      : _date.toString()),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: ElevatedButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2025),
                          ).then((value) {
                            setState(() {
                              _date = value;
                            });
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10),
                          child: Text('Pilih Tanggal'),
                        )),
                  ),
                  TextButton(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: Text('Simpan'),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        setState(() {
                          String tanggal = _date.toString();
                          tanggal = tanggal.substring(0, 10);
                          Budget newBudget = Budget(
                              judul: _judul,
                              jumlah: _jumlah,
                              tipe: _tipe,
                              tanggal: tanggal);
                          _budget.add(newBudget);
                        });
                        showDialog(
                            context: context,
                            builder: (context) {
                              String tanggal = _date.toString();
                              tanggal = tanggal.substring(0, 10);
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 15,
                                child: Container(
                                  child: ListView(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 20),
                                    shrinkWrap: true,
                                    children: <Widget>[
                                      Center(
                                          child: const Text('Informasi Data')),
                                      SizedBox(height: 20),
                                      Center(
                                          child: Column(
                                        children: [
                                          Text('Judul : ' + _judul),
                                          Text('Nominal : ' +
                                              _jumlah.toString()),
                                          Text('Jenis : ' + _tipe),
                                          Text('Tanggal : ' + _date.toString())
                                        ],
                                      )),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Kembali'),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
