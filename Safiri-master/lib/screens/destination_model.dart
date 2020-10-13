import 'package:msafiri/screens/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  String activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

/*List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/Maldives.jpg',
    name: 'Maldives Sri Lanka',
    type: 'SightSeeing Tour',
    startTimes: ['12 am', '12pm'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/Burj.jpg',
    name: 'Burj Khalifa',
    type: 'Good site and logging',
    startTimes: ['12 am', '12pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/Great Wall Hotel.jpg',
    name: 'The Eiffel Tower',
    type: 'SightSeeing Tour',
    startTimes: ['12 am', '12pm'],
    rating: 3,
    price: 125,
  ),
];
*/
List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/MaasaiMara.jpg',
    city: 'Narok',
    country: 'Kenya',
    description:
        'Visit Maasai Mara and witness one of the wonders of the world.',
    activities: 'Camping',
  ),
  Destination(
    imageUrl: 'assets/images/Great Wall Hotel.jpg',
    city: 'Instabul',
    country: 'Turkey',
    description: 'Visit one of the most beautiful cities of the word.',
    activities: 'Shopping',
  ),
  Destination(
    imageUrl: 'assets/images/Maasai Mara Lodges.jpg',
    city: 'South East Kenya',
    country: 'Kenya',
    description: 'Visit and enjoy the great site of nature and the wild.',
    activities: 'Hiking',
  ),
  Destination(
    imageUrl: 'assets/images/NrbPark.jpg',
    city: 'Nairobi',
    country: 'Kenya',
    description: 'Visit the greatest park within the city.',
    activities: "Tour",
  ),
];
