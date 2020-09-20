import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BuyerFromNet extends StatelessWidget {
  final String apiUrl =
      "https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2FbuyerList.json?alt=media&token=3dcc96c2-9309-4873-868d-bf0023f6266c";

  Future<List<dynamic>> fetchBuyers() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body);
  }

// for returning the name
  String _name(dynamic crop) {
    return crop['buyerName'];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<dynamic>>(
          future: fetchBuyers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 800,
                        childAspectRatio: 1/ 2,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 1),
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(30),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.all(10),
                        child: Card(
                          child: Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(
                                  snapshot.data[index]['photo'],
                                  height: 80,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  // mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Row(children: [
                                        Image.network(
                                            snapshot.data[index]['cropInfo']
                                                ['photo'],
                                            height: 14,
                                            width: 14),
                                        Text(
                                          snapshot.data[index]['cropInfo']
                                              ['crop'],
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on,
                                                size: 12, color: Colors.red),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              'sd',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                    Text(
                                      snapshot.data[index]['buyerName'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
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
                                                padding: const EdgeInsets.only(
                                                    left: 2),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                       snapshot.data[index]['price'][0]['date'],
                                                      // '4s',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              // Text('\u{20B9}6.0')
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 3),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      '\u{20B9}${snapshot.data[index]['price'][0]['price']}',
                                                      // 'ss',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 22,
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 2),
                                                        child: Text(
                                                          snapshot.data[index]['price'][0]['sku'],
                                                          // 'ss',
                                                          style: TextStyle(
                                                              fontSize: 10),
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
                                                padding: const EdgeInsets.only(
                                                    left: 2),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                       snapshot.data[index]['price'][1]['date'],
                                                      // 'ss',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              // Text('\u{20B9}8.0')
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 3),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      '\u{20B9}${snapshot.data[index]['price'][1]['price']}',
                                                      // 'ss',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 22,
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 2),
                                                        child: Text(
                                                          snapshot.data[index]['price'][1]['sku'],
                                                          // 'ss',
                                                          style: TextStyle(
                                                              fontSize: 10),
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
                                                padding: const EdgeInsets.only(
                                                    left: 2),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      snapshot.data[index]['price'][2]['date'],
                                                      // 'ss',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              // Text('\u{20B9}6.0')
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 3),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      '\u{20B9}${snapshot.data[index]['price'][2]['price']}',
                                                      // 'ss',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 22,
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 2),
                                                        child: Text(
                                                           snapshot.data[index]['price'][1]['sku'],
                                                          // 'ss',
                                                          style: TextStyle(
                                                              fontSize: 10),
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
                        ),
                      );
                    }),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
