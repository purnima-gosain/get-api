class PostModel {
  final String? id;
  final String? title;
  final String? body;
  final int? userId;
  final int? reactions;
  final List<String>? tags;

  const PostModel(
      {required this.id,
      required this.title,
      required this.body,
      required this.userId,
      required this.tags,
      required this.reactions});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
        id: json['id'],
        title: json['title'],
        body: json['body'],
        userId: json['userId'],
        tags: json['tags'],
        reactions: json['reactions']);
  }
}
