import 'package:flutter/material.dart';
import 'package:msafiri/screens/destinations.dart';

import 'horizontal_list_item.dart';
//import 'maasaimarascreen.dart';

class DestinationCarousel extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: destinationList.length,
        itemBuilder: (ctx, i) => HorizontalListItem(
          destinationList: null,
        ),
        //children: <Widget>[
        //HorizontalList(),
        //HorizontalList(),
        //],
      ),
    );
  }
}
