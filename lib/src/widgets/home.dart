import 'dart:convert';

import 'package:demo/src/model/dto/ImageModel.dart';
import 'package:demo/src/widgets/ListImageWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeWidget();
  }
}

class HomeWidget extends State<HomeApp> {
  int counter = 0;
  final String restUrl = "https://jsonplaceholder.typicode.com/photos/";
  List<ImageModel> listImage = [];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Your Daily Reads"),
        ),
        body: ListImageWidget(
          listImages: listImage,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: increment,
        ),
      ),
    );
  }

  void increment() async {
    counter++;
    var response = await http.get(restUrl + '$counter');
    ImageModel imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      listImage.add(imageModel);
    });
  }
}
