import 'package:flutter/material.dart';
import 'package:flutter_application_1/prefer.dart';
import 'package:flutter_application_1/screen_1.dart';
import 'package:flutter_application_1/screen_2.dart';
import 'package:flutter_application_1/tabbar.dart';



class NewPage extends StatefulWidget {
  const NewPage({ Key? key }) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          elevation: 0,
          // backgroundColor: Colors.red,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.black, Colors.pink])),
          ),
          // titleSpacing: 1,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Appbar Properties'),
              Icon(Icons.snowshoeing_outlined)
            ],
          ),
          actions: [
            Row(
              children: const [
                Icon(Icons.smart_toy_outlined),
                Text('HEYAA!!'),
                Icon(Icons.smart_toy_outlined),
              ],
            ),
          ],
          actionsIconTheme: const IconThemeData(
            color: Colors.amber,
          ),
          bottom: PreferredSize(
              child: Container(
                padding:const EdgeInsets.all(10),
                child: const TextField(
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.amber,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.yellow),
                      labelText: 'Search',
                      labelStyle: TextStyle(color: Colors.amber),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 3,
                          ))),
                ),
              ),
              preferredSize: const Size.fromHeight(70.0)),
        ),

        drawer: Drawer(
            child: ListView(
               padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.black, Colors.white],
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                          foregroundImage: AssetImage('assets/bat_1.jpeg'),
                          radius: 40),
                      Text('NISARG PARIKH'),
                    ],
                  ),
                )),
                ListTile(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  title:const Text('Click Here To Close'),
                ),
                ListTile(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const TabView()));
                  },
                  title:const Text('Click Here To See Tabbar'),
                ),
                ListTile(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const Pre()));
                  },
                  title:const Text('Click Here To See PreferredSize Appbar'),
                ),
                 ListTile(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const Screen1()));
                  },
                  title:const Text('Screen 1'),
                ),
                 ListTile(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const Screen2()));
                  },
                  title:const Text('Screen 2'),
                ),
          ],
        )),

        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
          },
          label: const Text('Lets Roll!!'),
          icon: const Icon(Icons.add_reaction_sharp),
          backgroundColor: Colors.black,
        ),
        body:  Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const TabView()));
            },
            child:const Text('Click Here'),
          ),
        ),
      );
  }
}