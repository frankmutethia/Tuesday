import 'package:flutter/material.dart';
import 'maasaimarascreen.dart';

class Places extends StatefulWidget {
  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 270,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 10,
                  child: Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/NrbPark.jpg'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Nairobi National Park',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w100,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          /* GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => MaasaiMaraScreen()),
            ),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/MaasaiMara.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Maasai Mara',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
