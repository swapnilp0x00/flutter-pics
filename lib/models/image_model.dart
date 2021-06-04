class ImageModel {
  late int id;
  late String url;
  late String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    title = json['title'];
  }

  @override
  String toString() {
    return '$id, $url, $title';
  }
}