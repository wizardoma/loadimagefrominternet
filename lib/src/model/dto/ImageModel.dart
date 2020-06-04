class ImageModel {
  int id;
  String title;
  String url;

  ImageModel({this.id, this.title, this.url});

  ImageModel.fromJson(json){
    this.id = json['id'];
    this.title = json['title'];
    this.url = json['url'];


  }

}