import 'package:counter_7/pages/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/tambahBudget.dart';
import 'package:counter_7/pages/dataBudget.dart';

class drawerApp extends StatefulWidget {
  var budget;
  drawerApp({super.key, this.budget});

  @override
  State<drawerApp> createState() => _drawerApp();
}

class _drawerApp extends State<drawerApp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 150,
            color: Colors.blue,
            alignment: Alignment.bottomLeft,
            child: Text(
              "Menu Pilihan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const MyHomePage(title: "Program Counter"),
                ),
              );
            },
            leading: Icon(
              Icons.home,
              size: 35,
            ),
            title: const Text("counter_7"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const addBudgetPage(),
                ),
              );
            },
            leading: Icon(
              Icons.addchart,
              size: 35,
            ),
            title: const Text("Tambah Budget"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => dataBudget(
                    mydata: widget.budget,
                  ),
                ),
              );
            },
            leading: Icon(
              Icons.account_balance_wallet,
              size: 35,
            ),
            title: const Text("Data Budget"),
          ),
          ListTile(
            onTap: (() {
              Navigator.pop(context);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => MyWatchlistPage())));
            }),
            leading: Icon(Icons.airline_seat_flat_outlined),
            title: const Text("My Watch List"),
          )
        ],
      ),
    );
  }
}
