class MyWatchlist {
  String judul;
  String rilis;
  int rating;
  String review;
  bool finished;

  MyWatchlist(
      {required this.judul,
      required this.rilis,
      required this.rating,
      required this.review,
      required this.finished});

  factory MyWatchlist.fromJson(Map<String, dynamic> data) => MyWatchlist(
        judul: data["fields"]["title"],
        rilis: data["fields"]["release_date"],
        rating: data["fields"]["rating"],
        review: data["fields"]["review"],
        finished: data["fields"]["watched"],
      );

  Map<String, dynamic> toJson() => {"title": judul};
}
