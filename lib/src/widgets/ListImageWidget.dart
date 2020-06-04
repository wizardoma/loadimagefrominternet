import 'package:demo/src/model/dto/ImageModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListImageWidget extends StatelessWidget {
  final List<ImageModel> listImages;

  toUppercase(String word){
    return word.toUpperCase();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: listImages.length,
      itemBuilder: (context , int index){
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(30.0))
          ),
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(20.0),
          child: singleImageWidget(listImages[index])
        );
      } ,
    );
  }

  ListImageWidget({this.listImages});

  singleImageWidget(ImageModel image) {

    return  Column(
      children: <Widget>[
        Image.network(image.url, width: 300, height: 300,),
        Center(
          child: Padding(
              child: Text(toUppercase(image.title)),
              padding: EdgeInsets.only(top: 10.0),
          ),

        ),
      ],
    );
  }

}