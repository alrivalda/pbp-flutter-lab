import 'package:flutter/material.dart';
import 'package:counter_7/pages/_drawer.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/pages/data_mywatchlist.dart';
import 'package:counter_7/pages/mywatchlistshow.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({Key? key}) : super(key: key);

  @override
  State<MyWatchlistPage> createState() => _myWatchlistPageState();
}

class _myWatchlistPageState extends State<MyWatchlistPage> {
  @override
  Widget build(BuildContext context) {
    ListTile addListTile(MyWatchlist item) => ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 7.5, vertical: 6.5),
          title: Padding(
            padding: const EdgeInsets.only(left: 13.5),
            child: Text(
              item.judul,
            ),
          ),
          trailing: Checkbox(
            value: item.finished,
            onChanged: (bool? newValue) {
              setState(() {
                item.finished = !item.finished;
              });
            },
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyWatchlistShow(mywatchlist: item)));
          },
        );

    Card addCard(MyWatchlist item) => Card(
          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          elevation: 7,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color:
                  item.finished ? Colors.green.shade600 : Colors.red.shade400,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Container(
            child: addListTile(item),
          ),
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('My WatchList'),
      ),
      drawer: drawerApp(),
      body: FutureBuilder(
          future: dataMyWatchlist(),
          builder: (context, AsyncSnapshot temp) {
            if (temp.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!temp.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Watchlist Kosong",
                      style: TextStyle(
                          color: Color.fromARGB(255, 11, 84, 194),
                          fontSize: 25),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                    itemCount: temp.data!.length,
                    itemBuilder: (_, index) => addCard(temp.data![index]));
              }
            }
          }),
    );
  }
}
