import 'package:flutter/material.dart';

class Pre extends StatefulWidget {
  const Pre({ Key? key }) : super(key: key);

  @override
  _PreState createState() => _PreState();
}

class _PreState extends State<Pre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        
        preferredSize: Size.fromHeight(100),
        child: Container( 
          padding: EdgeInsets.only(bottom: 10),
          color: Colors.black,
          child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Hello ILDC', style: TextStyle(color: Colors.white, fontSize: 20),),
              ElevatedButton(child: Text('Click Me To go back hehehehe'), onPressed: (){Navigator.pop(context);},)
            ],
          ),
        ),
      ),
    );
  }
}