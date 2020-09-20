import 'package:flutter/material.dart';

class AllRows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
          children:[ 
            // first card
            Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // First Row
              //  wrapped Row inside container to give background color
              Container(
                color: Colors.blue[50],
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Image.asset('assets/images/trips.png')),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '22 Oct\'20 - 23 Oct\'20 ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Trips',
                            style: TextStyle(
                                color: Colors.blue, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),

              // second Row

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      
                      Colors.blue[50],
                      Colors.white,
                      
                       

                      //  Colors.blue[300],
                    ],
                
                  ),
                  
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('3',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 5,),
                          Text('Completed', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('1',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                          SizedBox(height: 5,),
                          Text('Inompleted', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('5',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow),),
                          SizedBox(height: 5,),
                          Text('Upcomming', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('5',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),),
                          SizedBox(height: 5,),
                          Text('Unsetteld', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //second card


      Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // First Row
              //  wrapped Row inside container to give background color
              Container(
                color: Colors.grey[200],
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Image.asset('assets/images/stock.png')),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '22 Oct\'20 - 23 Oct\'20 ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Stock Keeping Units',
                            style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),

              // second Row

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      
                      Colors.grey[200],
                      Colors.white,
                      
                       

                      //  Colors.blue[300],
                    ],
                
                  ),
                  
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('1,180',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 5,),
                          Text('Loaded', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('1,280',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                          SizedBox(height: 5,),
                          Text('To Vendor', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('1,080',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow),),
                          SizedBox(height: 5,),
                          Text('From Vendor', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('10,180',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),),
                          SizedBox(height: 5,),
                          Text('Unsetteld', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // third card

      Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // First Row
              //  wrapped Row inside container to give background color
              Container(
                color: Colors.orange[100],
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left:20),
                            child: Image.asset('assets/images/stockinfo.png',width: 90,)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '22 Oct\'20',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Stock Information',
                            style: TextStyle(
                                color: Colors.orange, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),

              // second Row

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      
                      Colors.orange[100],
                      Colors.white,
                      
                       

                      //  Colors.blue[300],
                    ],
                
                  ),
                  
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('150',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                          SizedBox(height: 5,),
                          Text('Total Stock', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('12,000',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow),),
                          SizedBox(height: 5,),
                          Text('Returned by vendor', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('11,080',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 5,),
                          Text('Unsettled', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),


      // fourth card

       Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // First Row
              //  wrapped Row inside container to give background color
              Container(
                color: Colors.pink[50],
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left:20),
                            child: Image.asset('assets/images/payment.png',width: 90,)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '22 Oct\'20 - 23 Oct\'20',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Payments',
                            style: TextStyle(
                                color: Colors.pink, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),

              // second Row

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      
                      Colors.pink[50],
                      Colors.white,
                      
                       

                      //  Colors.blue[300],
                    ],
                
                  ),
                  
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('\u{20B9}11,080',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                          SizedBox(height: 5,),
                          Text('Actual order value', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('\u{20B9}11,080',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow),),
                          SizedBox(height: 5,),
                          Text('Collected', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(5),
                                        child: Column(
                        children: [
                          Text('\u{20B9}11,080',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          SizedBox(height: 5,),
                          Text('Unsettled', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),


     


      
      
      ],);

    

  }
}
