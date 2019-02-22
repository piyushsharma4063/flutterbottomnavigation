import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Nav Bar',
      theme: new ThemeData(
          primarySwatch: Colors.blue
      ),
      home: new BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  BottomNavBarState createState() => new BottomNavBarState();

}

class BottomNavBarState extends State<BottomNavBar> {

  int _cIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Flutter Nav Bar'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _cIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Home', style: new TextStyle(
                  color: const Color(0xFF06244e)))
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Posts', style: new TextStyle(
                  color: const Color(0xFF06244e)))
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Messages', style: new TextStyle(
                  color: const Color(0xFF06244e)))
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Settings', style: new TextStyle(
                  color: const Color(0xFF06244e)))
          ),
        ],
        onTap:(index){
          setState(() {
            _cIndex = index;
          });
        }
      ),
    );
  }

}