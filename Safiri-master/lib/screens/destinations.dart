class Destination {
  // final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String country;
  final String city;

  Destination({
    // this.id,
    this.title,
    this.imageUrl,
    this.description,
    this.country,
    this.city,
  });
}

final destinationList = [
  Destination(
    // id:
    title: 'Nairobi National Park',
    imageUrl: 'assets/images/NrbPark.jpg',
    description: 'Welcome to Nairobi National Park',
    country: 'Kenya',
    city: 'Nairobi',
  ),
  Destination(
    // id:
    title: 'Maasai Mara National Park',
    imageUrl: 'assets/images/MaasaiMara.jpg',
    description: 'Welcome to Maasai Mara National Park',
    country: 'Kenya',
    city: 'Narok',
  ),
  Destination(
    // id:
    title: 'Diani Beach',
    imageUrl: 'assets/images/diani.jpg',
    description: 'Welcome to Diani Beach',
    country: 'Kenya',
    city: 'Mombasa',
  ),
];
