import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  elevation: 5,
                  child: Row(children: <Widget>[
                    Container(
                      height: 150.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5),
                          ),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/nrbparkcamping.jpg'))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Welcome.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 180,
                            child: Text(
                                'We offer the best camping experience. During the camping experince the campers will be able to see the wildlife.'),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: <Widget>[
                Card(
                  elevation: 5,
                  child: Row(children: <Widget>[
                    Container(
                      height: 150.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5),
                          ),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/nrbparkcamping.jpg'))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Welcome.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 180,
                            child: Text(
                                'We offer the best camping experience. During the camping experince the campers will be able to see the wildlife.'),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ],
        ));
  }
}
