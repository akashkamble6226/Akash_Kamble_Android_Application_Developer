import 'package:flutter/material.dart';

import '../widgets/all_crop_from_server.dart';

import '../widgets/all_buyer_from_server.dart';



class CropList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
          color: Colors.grey[300],
          width: double.infinity,
          
          //height: 800,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Text('What is your crop',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                  autofocus: false,
                  style: TextStyle(fontSize: 20.0, color: Color(0xFFbdc6cf)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search Specific Crop',
                    suffixIcon: Icon(Icons.search),
                    contentPadding:
                        const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                  ),
                ),
              ),
              Expanded(child: CropFromNet()),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:10),
                    child: Text('Buyers',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                ],
              ),
              BuyerFromNet(),

             
            ],
          ),
        
      ),
    );
  }
}
