class CommentModel {
  String? id;
  String? userId;
  String? commentText;
  DateTime? createAt;

  CommentModel({
    this.id,
    this.userId,
    this.commentText,
    this.createAt,
  });
}
