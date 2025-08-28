class PostModel {
  String title;
  String body;

  PostModel({required this.title, required this.body});

  factory PostModel.fromJson(Map<String, dynamic> jsonData) {
    return PostModel(title: jsonData["title"], body: jsonData["body"]);
  }
}
