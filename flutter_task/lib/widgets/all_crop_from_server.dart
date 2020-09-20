import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class CropFromNet extends StatelessWidget {

  final String apiUrl =
      "https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2FcommodityList.json?alt=media&token=9b9e5427-8769-4dec-83c4-52afe727dbf9";

  Future<List<dynamic>> fetchCrops() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body);
  }

// for returning the name
  String _name(dynamic crop) {
    return crop['commodityName'];
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
          future: fetchCrops(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              // print(_name(snapshot.data[0]));
              return Expanded(
                              child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 160,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 1),
                    // scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(8),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Card(
                          elevation: 10,
                          child: Container(
                            width: 100,
                            padding: EdgeInsets.all(10),
                            height: 20,
                            child: Row(
                              children: [
                                Container(
                                  child: Image.network(
                                    snapshot.data[index]['photo'],
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Flexible(
                                  child: Text(
                                    _name(snapshot.data[index]),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 1,
                                    softWrap: false,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                              
                            ),
                          ),
                        ),
                      );
                    }),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
       
  );
  }
}