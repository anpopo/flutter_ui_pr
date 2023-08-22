class Activity {

  Activity({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.startTimes,
    required this.rating,
    required this.price,
  });
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;
}
