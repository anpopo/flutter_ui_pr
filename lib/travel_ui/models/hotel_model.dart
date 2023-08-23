class Hotel {
  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });

  String imageUrl;
  String name;
  String address;
  int price;
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/travel_ui/images/hotel0.jpg',
    name: 'Hotel 0',
    address: '404 Great St',
    price: 175,
  ),
  Hotel(
    imageUrl: 'assets/travel_ui/images/hotel1.jpg',
    name: 'Hotel 1',
    address: '404 Great St',
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/travel_ui/images/hotel2.jpg',
    name: 'Hotel 2',
    address: '404 Great St',
    price: 240,
  ),
];
