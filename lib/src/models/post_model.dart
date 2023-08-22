import 'package:design_to_code/src/models/comments_model.dart';

class PostModel {
  String? id;
  String? userId;
  String? text;
  String? imageUrl;
  List<String>? likesUserUID;
  List<CommentModel>? comments;
  DateTime? createAt;
  DateTime? updateAt;

  PostModel({
    this.id,
    this.userId,
    this.text,
    this.imageUrl,
    this.likesUserUID,
    this.comments,
    this.createAt,
    this.updateAt,
  });
}
