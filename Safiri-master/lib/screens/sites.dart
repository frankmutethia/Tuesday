import 'package:flutter/material.dart';

class Sites extends StatefulWidget {
  @override
  _SitesState createState() => _SitesState();
}

class _SitesState extends State<Sites> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 270,
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Card(
                  child: Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/beach.jpg'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'More about Msafiri',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
