import 'package:flutter/material.dart';

import './AllRows.dart';
import './drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:
         AppBar(

          iconTheme: IconThemeData(color:Colors.black),

           backgroundColor: Colors.white,
           
          title: Text('Dashboard',style: TextStyle(color: Colors.black),),
          // leading: (Icon(Icons.menu,color: Colors.black,)),

        ),

        
        

        drawer:  MyDrawer(),

        body: AllRows(),
        
      ),
      
    );
  }
}
