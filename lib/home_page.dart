import 'package:clone_ig_app/feeds_page.dart';
import 'package:clone_ig_app/profile_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jtragram'),
        brightness: Brightness.dark,
        backgroundColor: Colors.orange,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.favorite),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.send),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        currentIndex: selectedPage,
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart),
            label: 'Feeds',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
      ),
      body: Container(
        child: IndexedStack(
          index: selectedPage,
          children: [
            FeedsPage(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }
}
