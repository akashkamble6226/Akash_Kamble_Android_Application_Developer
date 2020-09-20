import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      
    
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(100),
            color: Theme.of(context).primaryColor,
          ),

          // Text('Dashboard'),
          // Text('Profile'),
          // Text('Logout'),

          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text(
              'Dashboard',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},

          ),

            ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},

          ),


            ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},

          ),


        ],
      ),
    );
  }
}
