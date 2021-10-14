import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

bool tabcolor = false;

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Text('Tabbar View Example', style: TextStyle(fontSize: 26)),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            bottom: TabBar(
              // isScrollable: false,
              indicatorWeight: 5,
              // indicator: UnderlineTabIndicator(
              //   borderSide: BorderSide(color: Colors.red, width: 4),
              //   insets: EdgeInsets.symmetric(horizontal: 20),
              // ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.red,
              tabs: [
                Tab(
                  child: Column(
                    children: const [
                      Text('Batman', style: TextStyle(fontSize: 25)),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: const [
                      Text('Superman', style: TextStyle(fontSize: 25)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            // physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                color: Colors.black,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          )),
    );
  }
}
