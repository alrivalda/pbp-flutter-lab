import 'package:counter_7/pages/_drawer.dart';
import 'package:counter_7/model/budgetClass.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/tambahBudget.dart';
import 'package:counter_7/pages/dataBudget.dart';

class dataBudget extends StatefulWidget {
  var mydata;
  dataBudget({super.key, this.mydata});

  @override
  State<dataBudget> createState() => _dataBudgetState();
}

class _dataBudgetState extends State<dataBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Data Budget"),
        ),
        drawer: drawerApp(),
        body: Column(children: [
          if (widget.mydata == null)
            const Center(
              child: Text("Tidak ditemukan data"),
            )
          else if (widget.mydata.length == 0)
            const Center(
              child: Text("Tidak ditemukan data"),
            )
          else
            Expanded(
              child: ListView.builder(
                itemCount: widget.mydata.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                        title: Text(widget.mydata[index].judul),
                        subtitle: Text(widget.mydata[index].jumlah.toString()),
                        trailing: Column(
                          children: [
                            Text(widget.mydata[index].tipe),
                            Text(widget.mydata[index].tanggal.toString()),
                          ],
                        )),
                  );
                },
              ),
            ),
        ]));
  }
}
