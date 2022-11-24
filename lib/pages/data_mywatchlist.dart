import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:counter_7/model/mywatchlist.dart';

Future<List<MyWatchlist>> dataMyWatchlist() async {
  var url = Uri.parse(
      'https://tugas2labpbpalrivalda.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      'Content-Type': 'application/json',
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<MyWatchlist> mywatchlist = [];
  for (var item in data) {
    if (item != null) {
      mywatchlist.add(MyWatchlist.fromJson(item));
    }
  }

  return mywatchlist;
}
