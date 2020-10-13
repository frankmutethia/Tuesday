class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/NrbPark.jpg',
    name: 'Hotel 1',
    address: 'Nairobi',
    price: 175,
  ),
  Hotel(
    imageUrl: 'assets/images/Great Wall Hotel.jpg',
    name: 'Hotel 2',
    address: 'Maasai Mara',
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/images/Maasai Mara Lodges.jpg',
    name: 'Hotel 2',
    address: '404 Great St',
    price: 240,
  ),
];
