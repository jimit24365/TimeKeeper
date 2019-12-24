import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white,
      accentColor:  Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              leading: Icon(
                Icons.access_time,
                color: Colors.grey,
              ),
              floating: true,
              title: Text(
                "TimeKeeper",
                style: TextStyle(color: Colors.grey),
              ),
              expandedHeight: 50,
              elevation: 5.0,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(title: Text('Item #$index')),
                childCount: 1000,
              ),
            ),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.av_timer), title: Text("Timer")),
            BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart), title: Text("Records")),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), title: Text("Calendar"))
          ],
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
