//import 'package:flappy_search_bar/flappy_search_bar.dart';
//import 'package:NikhilPatil_Android_Application_Developer/constant.dart';

import 'package:NikhilPatil_Android_Application_Developer/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart';

String location1, location11, location2, location22, location3, location33;
String sah,
    tomato_photo,
    mango_photo,
    onion_photo,
    date1,
    date2,
    date3,
    price1,
    price2,
    price3,
    sku1,
    sku2,
    sku3,
    comp_name,
    tomato_name,
    mango_name,
    onion_name;

//String name0, name1, name2, name3, name4, name5, name6, name7;
//String image0, image1, image2, image3, image4, image5, image6, image7;

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}
/*
class DataCommodity extends StatefulWidget {
  @override
  _DataCommodityState createState() => _DataCommodityState();
}



class _DataCommodityState extends State<DataCommodity> {
  @override
  void initState() {
    super.initState();
    this.getJsonDataCommodity();
  }

  Response response1;

  Future<dynamic> getJsonDataCommodity() async {
    response1 = await http.get(
        "https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2FcommodityList.json?alt=media&token=9b9e5427-8769-4dec-83c4-52afe727dbf9");
    setState(() {
      List<dynamic> convertDataToJson1 = [jsonDecode(response1.body)];

      print(convertDataToJson1.length);
      // print(convertDataToJson[0]);

      image0 = convertDataToJson1[0]['photo'];
      name0 = convertDataToJson1[0]['commodityName'];

      image1 = convertDataToJson1[1]['photo'];
      name1 = convertDataToJson1[1]['commodityName'];

      image2 = convertDataToJson1[2]['photo'];
      name2 = convertDataToJson1[2]['commodityName'];

      image3 = convertDataToJson1[3]['photo'];
      name3 = convertDataToJson1[3]['commodityName'];

      image4 = convertDataToJson1[4]['photo'];
      name4 = convertDataToJson1[4]['commodityName'];

      image5 = convertDataToJson1[5]['photo'];
      name5 = convertDataToJson1[5]['commodityName'];

      image6 = convertDataToJson1[6]['photo'];
      name6 = convertDataToJson1[6]['commodityName'];

      image7 = convertDataToJson1[7]['photo'];
      name7 = convertDataToJson1[7]['commodityName'];
      print(image0);
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {}
}*/

class DataSearch extends SearchDelegate<String> {
  final names = [name0, name1, name2, name3, name4, name5, name6, name7];
  final recentnames = [name1, name6];

  @override
  List<Widget> buildActions(BuildContext context) {
    //action for appbar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of appbar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // show results based on selection
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // what to show when search
    final suggestionList = query.isEmpty
        ? recentnames
        : names.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, int index) => ListTile(
        leading: Icon(Icons.fastfood),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
}

class _DashboardState extends State<Dashboard> {
  var response;
  //String url =
  //  "https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2FcommodityList.json?alt=media&token=9b9e5427-8769-4dec-83c4-52afe727dbf9";

  @override
  void initState() {
    super.initState();
    this.getJsonDataBuyers();
    this.getJsonDataCommodity();
  }

  var response1;

  Future<dynamic> getJsonDataCommodity() async {
    response1 = await http.get(
        "https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2FcommodityList.json?alt=media&token=9b9e5427-8769-4dec-83c4-52afe727dbf9");
    setState(() {
      List<dynamic> convertDataToJson1 = jsonDecode(response1.body);

      print(convertDataToJson1.length);
      // print(convertDataToJson[0]);

      image0 = convertDataToJson1[0]['photo'];
      name0 = convertDataToJson1[0]['commodityName'];

      image1 = convertDataToJson1[1]['photo'];
      name1 = convertDataToJson1[1]['commodityName'];

      image2 = convertDataToJson1[2]['photo'];
      name2 = convertDataToJson1[2]['commodityName'];

      image3 = convertDataToJson1[3]['photo'];
      name3 = convertDataToJson1[3]['commodityName'];

      image4 = convertDataToJson1[4]['photo'];
      name4 = convertDataToJson1[4]['commodityName'];

      image5 = convertDataToJson1[5]['photo'];
      name5 = convertDataToJson1[5]['commodityName'];

      image6 = convertDataToJson1[6]['photo'];
      name6 = convertDataToJson1[6]['commodityName'];

      image7 = convertDataToJson1[7]['photo'];
      name7 = convertDataToJson1[7]['commodityName'];
      print(image0);
    });

    //return "Success";
  }

  Future<dynamic> getJsonDataBuyers() async {
    Response response = await http.get(
        "https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2FbuyerList.json?alt=media&token=3dcc96c2-9309-4873-868d-bf0023f6266c");
    var convertDataToJson = jsonDecode(response.body);
    sah = (convertDataToJson[0]['photo']);
    //print(sah);
    tomato_photo = (convertDataToJson[0]['cropInfo']['photo']);
    tomato_name = (convertDataToJson[0]['cropInfo']['crop']);

    mango_photo = (convertDataToJson[1]['cropInfo']['photo']);
    mango_name = (convertDataToJson[1]['cropInfo']['crop']);

    onion_photo = (convertDataToJson[2]['cropInfo']['photo']);
    onion_name = (convertDataToJson[2]['cropInfo']['crop']);

    comp_name = (convertDataToJson[0]['buyerName']);
    location1 = (convertDataToJson[0]['location']['lat']);
    location11 = (convertDataToJson[0]['location']['lng']);
    date1 = (convertDataToJson[0]['price'][0]['date']);
    date2 = (convertDataToJson[0]['price'][1]['date']);
    date3 = (convertDataToJson[0]['price'][2]['date']);

    price1 = (convertDataToJson[0]['price'][0]['price']);
    price2 = (convertDataToJson[0]['price'][1]['price']);
    price3 = (convertDataToJson[0]['price'][2]['price']);

    sku1 = (convertDataToJson[0]['price'][0]['sku']);
    sku2 = (convertDataToJson[0]['price'][1]['sku']);
    sku3 = (convertDataToJson[0]['price'][2]['sku']);
    //  print(price2);
    // print(date1);
    // print(date2);
    // print(date3);
    //print(location1);
    //print(location11);

    // print(tomato_photo);
    //print(comp_name);
    // print(convertDataToJson.length);
    // print(image1);
  }

  @override
  Widget build(BuildContext context) {
    var deviceheight = MediaQuery.of(context).size.height;
    var devicewidth = MediaQuery.of(context).size.width;
    // var screenSize = MediaQuery.of(context).size;
    //var width = screenSize.width;
    //var height = screenSize.height;
    return body();
  }

  body() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.blueGrey,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    }),
                Text(
                  'What is your Crop?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 350,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blueGrey[100]),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Search',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 175,
                    ),
                    IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          showSearch(context: context, delegate: DataSearch());
                        })
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                FlatButton.icon(
                    onPressed: null,
                    icon: Image.network(
                      image0,
                      width: 25,
                      height: 25,
                    ),
                    label: Text(
                      name0,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                FlatButton.icon(
                  onPressed: null,
                  icon: Image.network(
                    image1,
                    width: 25,
                    height: 25,
                  ),
                  label: Text(
                    name1,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                FlatButton.icon(
                    onPressed: null,
                    icon: Image.network(
                      image2,
                      width: 25,
                      height: 25,
                    ),
                    label: Text(
                      name2,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                FlatButton.icon(
                    onPressed: null,
                    icon: Image.network(
                      image3,
                      width: 25,
                      height: 25,
                    ),
                    label: Text(
                      name3,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                FlatButton.icon(
                    onPressed: null,
                    icon: Image.network(
                      image4,
                      width: 25,
                      height: 25,
                    ),
                    label: Text(
                      name4,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                FlatButton.icon(
                    onPressed: null,
                    icon: Image.network(
                      image5,
                      width: 25,
                      height: 25,
                    ),
                    label: Text(
                      name5,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                FlatButton.icon(
                    onPressed: null,
                    icon: Image.network(
                      image6,
                      width: 25,
                      height: 25,
                    ),
                    label: Text(
                      name6,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                FlatButton.icon(
                    onPressed: null,
                    icon: Image.network(
                      image7,
                      width: 25,
                      height: 25,
                    ),
                    label: Text(
                      name7,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Buyer',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            Container(
              height: 100,
              // color: Colors.amberAccent[50],
              margin: EdgeInsets.symmetric(vertical: 20),
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Container(
                    width: 300,
                    child: Row(
                      children: [
                        Image.network(
                          sah,
                          scale: 2.0,
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  tomato_photo,
                                  scale: 40,
                                ),
                                Text(tomato_name),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(location1 + '  ' + location11),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                            Text(
                              comp_name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        color: Colors.blueGrey[50],
                                        child: Column(
                                          children: [
                                            Text(date1),
                                            Text('₹' + price1 + sku1),
                                          ],
                                        ))
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        color: Colors.blueGrey[50],
                                        child: Column(
                                          children: [
                                            Text(date2),
                                            Text('₹' + price2 + sku2),
                                          ],
                                        ))
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        color: Colors.blueGrey[50],
                                        child: Column(
                                          children: [
                                            Text(date3),
                                            Text('₹' + price3 + sku3),
                                          ],
                                        ))
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.greenAccent[100])),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 300,
                  //color: Colors.redAccent,
                  child: Row(
                    children: [
                      Image.network(
                        sah,
                        scale: 2.0,
                      ),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.network(
                                mango_photo,
                                scale: 40,
                              ),
                              Text(mango_name),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(location1 + '  ' + location11),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          Text(
                            comp_name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      color: Colors.blueGrey[50],
                                      child: Column(
                                        children: [
                                          Text(date1),
                                          Text('₹' + price1 + sku1),
                                        ],
                                      ))
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      color: Colors.blueGrey[50],
                                      child: Column(
                                        children: [
                                          Text(date2),
                                          Text('₹' + price2 + sku2),
                                        ],
                                      ))
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      color: Colors.blueGrey[50],
                                      child: Column(
                                        children: [
                                          Text(date3),
                                          Text('₹' + price3 + sku3),
                                        ],
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.greenAccent[100]),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    width: 300,
                    child: Row(
                      children: [
                        Image.network(
                          sah,
                          scale: 2.0,
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  onion_photo,
                                  scale: 40,
                                ),
                                Text(onion_name),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(location1 + '  ' + location11),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                            Text(
                              comp_name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        color: Colors.blueGrey[50],
                                        child: Column(
                                          children: [
                                            Text(date1),
                                            Text('₹' + price1 + sku1),
                                          ],
                                        ))
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        color: Colors.blueGrey[50],
                                        child: Column(
                                          children: [
                                            Text(date2),
                                            Text('₹' + price2 + sku2),
                                          ],
                                        ))
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        color: Colors.blueGrey[50],
                                        child: Column(
                                          children: [
                                            Text(date3),
                                            Text('₹' + price3 + sku3),
                                          ],
                                        ))
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.greenAccent[100])),
                const SizedBox(
                  width: 10,
                ),
              ]),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}
