class ItemModel {
  String imageUrl;
  String subtitle;

  ItemModel({this.imageUrl, this.subtitle});

  ItemModel.fromJson(json) {
    imageUrl = json['imageUrl'];
    subtitle = json['subtitle'];
  }
}
