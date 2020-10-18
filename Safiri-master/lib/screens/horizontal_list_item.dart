import 'package:flutter/material.dart';
import 'package:msafiri/screens/destinationdetails_screen.dart';

import 'destinations.dart';

class HorizontalListItem extends StatelessWidget {
  static final String id = "horizon";
  final Destination destinationList;
  const HorizontalListItem({Key key, this.destinationList}) : super(key: key);
  // final int index;
  //HorizontalListItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 160,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    DestinationDetailsScreen(destinationList: destinationList),
              ));
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Container(
                height: 180,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      destinationList.imageUrl,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              destinationList.title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
