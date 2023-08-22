import 'package:design_to_code/src/models/comments_model.dart';
import 'package:design_to_code/src/models/post_model.dart';
import 'package:design_to_code/src/models/users_model.dart';
import 'package:flutter/material.dart';

UserModel myUser = UserModel(
    id: '1',
    avatarUrl:
        'https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    bio: 'Hello Flutter ',
    email: 'infi@Karam.com',
    name: "Karam Zeway",
    username: '@karamzeway',
    brithday: DateTime.now());

List<PostModel> posts = [
  PostModel(
      id: '1',
      userId: '1',
      text: 'Hello Flutter developer',
      imageUrl:
          'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      comments: [
        CommentModel(
          commentText: 'Hello Flutter',
          id: '1',
          userId: '1',
          createAt: DateTime.now(),
        ),
        CommentModel(
          commentText: 'Hello Flutter 02',
          id: '2',
          userId: '2',
          createAt: DateTime.now(),
        ),
        CommentModel(
          commentText: 'Hello Flutter 03',
          id: '3',
          userId: '3',
          createAt: DateTime.now(),
        ),
        CommentModel(
          commentText: 'Hello Flutter 04',
          id: '4',
          userId: '4',
          createAt: DateTime.now(),
        ),
      ],
      likesUserUID: [
        '1',
        '2',
        '3',
        '5',
        '5',
        '6',
        '7',
        '8',
        '9',
        '10',
      ],
      createAt: DateTime.now(),
      updateAt: DateTime.now())
];
