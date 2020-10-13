import 'package:flutter/material.dart';
//import 'package:powers/screens/destination_carouselone.dart';
//import 'package:powers/screens/homepage_screen.dart';
import 'package:msafiri/screens/destination_carousel.dart';
import 'package:msafiri/screens/google_maps.dart';
import 'package:msafiri/screens/home_screen.dart';
import 'package:msafiri/screens/homepage_screen.dart';
//import 'package:powers/screens/destination_carouselone.dart';
import 'package:msafiri/screens/hotel_carousel.dart';
import 'package:msafiri/screens/places.dart';
import 'package:msafiri/screens/settings_screen.dart';
import 'package:msafiri/screens/sites.dart';
import 'package:msafiri/services/auth_services.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TravelScreen extends StatefulWidget {
  static final String id = "travel";
  @override
  _TravelScreenState createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    Map<String, String> args = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Msafiri',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ),
        drawer: Container(
          color: Colors.orange,
          child: Drawer(
            child: Column(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text(
                    "Name: ${args['name']}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  accountEmail: Text(
                    "Email: ${args['email']}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://picsum.photos/200",

                      // userInfo.profilePic
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text(
                    'Travel Maps',
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyHomePage.id);
                  },
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.payment),
                  title: Text(
                    'Payment',
                    style: TextStyle(),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Invite Friends'),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Divider(),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.card_membership),
                  title: Text('Blog'),
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help'),
                  onTap: () {},
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () {
                    AuthService.logout(context);
                  },
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 120.0),
                  child: Text(
                    'What would you like to find?',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 20.0),
                DestinationCarousel(),
                SizedBox(height: 20.0),
                // DestinationCarouselOne(),
                HotelCarousel(),
                SizedBox(height: 20.0),
                Sites(),
                SizedBox(height: 20.0),
                Places(),
                // SizedBox(), //importation of hotel_carousel
                //  HomePageScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
class MyBottomNavigationBar extends StatefulWidget {
  //do not use the default names for the classes such as the bottomnavigationbar
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    TravelScreen(),
    SettingScreen(),
  ];
  //create a method for the onTappedBar
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            title: Text('Travel'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
*/
