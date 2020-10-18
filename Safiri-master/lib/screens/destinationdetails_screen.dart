import 'package:flutter/material.dart';
import 'package:msafiri/screens/destinations.dart';

class DestinationDetailsScreen extends StatefulWidget {
  static final String id = "destinationdetails_screen";
  const DestinationDetailsScreen({Key key, this.destinationList})
      : super(key: key);
  final Destination destinationList;
  //static const routeName = 'destinationdetails_screens';
  @override
  _DestinationDetailsScreenState createState() =>
      _DestinationDetailsScreenState();
}

class _DestinationDetailsScreenState extends State<DestinationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    //Map<String, String> args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Destination Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                elevation: 5.0,
                child: Container(
                  height: 450,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          widget.destinationList.imageUrl,
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              widget.destinationList.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Nairobi National Park is one of the largest parks within a city. It is an amzing site for all tourists from various backgrounds.',
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
