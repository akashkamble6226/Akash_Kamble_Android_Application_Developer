import 'package:flutter/material.dart';

import '../widgets/singleCrop.dart';

import '../screens/Tab_screen.dart';

class Trial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     
     color: Colors.grey,
     width: double.infinity,
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [


         

             Expanded(child: CropList()),
              
              // TabScreen(),


         
        ],
      
      
              ),


          
    );
      
     
    
  }
}
