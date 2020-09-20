import 'package:flutter/material.dart';

class SingleBuyer extends StatelessWidget {



  final String id;
  final String buyerName;
  final String bigphoto;
  final String crop;
  final String smallphoto;
  final String date;
  final String price;
  final String tday;
  final String tprice;
  final String dtd;
  final String dtp;



  SingleBuyer({this.id,
    this.bigphoto,
    this.buyerName,
    this.crop,
    this.date,
    this.dtd,
    this.dtp,
    this.price,
    this.smallphoto,
    this.tday,
    this.tprice,
    });








  @override
  Widget build(BuildContext context) {
    return 
           Padding(
          padding: EdgeInsets.all(10),
          child: Card(
            child: Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  bigphoto,
                  height: 80,
                ),
               
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    
                  
                    children: [
                      
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(children: [
                          Image.network(
                              smallphoto,
                              height: 20,
                              width: 20),
                          Text(crop),

                          SizedBox(width: 50,),
                         Row(
                              children: [

                                 Icon(Icons.location_on,size: 12,color:Colors.red ),
                                  SizedBox(width: 2,),
                                 Text(dtd,style: TextStyle(fontSize: 10),),
                              
                              ],
                            ),
                         
                        ]),
                      ),
                      Text(
                        buyerName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 55,
                          ),
                          Container(
                            width: 60,
                            height: 40,
                            color: Colors.grey[300],
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Row(
                                    children: [
                                      Text(
                                       date,
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                                // Text('\u{20B9}6.0')
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '\u{20B9}$price',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 2),
                                          child: Text(
                                            'kg',
                                            style: TextStyle(fontSize: 10),
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // second small card
                          SizedBox(
                            width: 5,
                          ),

                          Container(
                            width: 60,
                            height: 40,
                            color: Colors.grey[300],
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Row(
                                    children: [
                                      Text(
                                        tday,
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                                // Text('\u{20B9}8.0')
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '\u{20B9}$tprice',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 2),
                                          child: Text(
                                            'kg',
                                            style: TextStyle(fontSize: 10),
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                          // third small card
                          SizedBox(
                            width: 5,
                          ),

                          Container(
                            width: 60,
                            height: 40,
                            color: Colors.grey[300],
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Row(
                                    children: [
                                      Text(
                                        dtd,
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                                // Text('\u{20B9}6.0')
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '\u{20B9}$dtp',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 2),
                                          child: Text(
                                            'kg',
                                            style: TextStyle(fontSize: 10),
                                          )),
                                    ],
                                  ),
                                )
                                
                              ],
                            ),
                            
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                
              ],
            ),
          ),
        
    );
  }
}
