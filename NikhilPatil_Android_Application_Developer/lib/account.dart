import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

//String name0, name1, name2, name3, name4, name5, name6, name7;
//String image0, image1, image2, image3, image4, image5, image6, image7;

class _AccountState extends State<Account> {
  myapp1() {
    var mybody = Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      color: Colors.blueGrey[50],
      margin: EdgeInsets.all(20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 3,
              ),
            ),
            margin: EdgeInsets.all(50),

            alignment: Alignment.center,
            width: 350,
            height: 200,
            // color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Nikhil Patil',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.email),
                    Text('nikhilpatil.nicks@gmail.com'),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            // onTap: myprint,
            onDoubleTap: () {
              Fluttertoast.showToast(
                  msg: "Profile Selected..!!",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green[700],
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      NetworkImage('https://vesatogo.com/assets/favicon.ico'),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Colors.black12,
                  width: 3,
                ),
              ),
              // margin: EdgeInsets.all(20),
              width: 100,
              height: 100,
              // color: Colors.blue,
              // child: Text('second'),
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {
                  print('Add Profiles');
                })
          ],
        ),
        body: mybody,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return myapp1();
  }
}
