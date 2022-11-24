import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/pages/_drawer.dart';
import 'package:counter_7/model/mywatchlist.dart';

class MyWatchlistShow extends StatelessWidget {
  final MyWatchlist mywatchlist;

  const MyWatchlistShow({Key? key, required this.mywatchlist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: drawerApp(),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Column(
              children: [
                Center(
                  child: Text(
                    mywatchlist.judul,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 25),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                          text: 'Rilis: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '${mywatchlist.rilis}\n'),
                      const TextSpan(
                          text: 'Rating: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '${mywatchlist.rating}/5\n'),
                      const TextSpan(
                          text: 'Status ditonton: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: (mywatchlist.finished)
                              ? "Sudah ditonton\n"
                              : "Belum ditonton\n"),
                      const TextSpan(
                          text: 'Review: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "${mywatchlist.review}\n"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ])),
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: Colors.blue.shade400,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Kembali',
            style: TextStyle(fontSize: 13),
          ),
        ),
      ],
    );
  }
}
