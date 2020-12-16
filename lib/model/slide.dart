import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/image1.jpg',
    title: 'App Features Screen',
    description: 'short description coontent short description content',
  ),
  Slide(
    imageUrl: 'assets/images/image1.jpg',
    title: 'App Features Screen 2',
    description: 'short description coontent short description content',
  ),
  Slide(
    imageUrl: 'assets/images/image1.jpg',
    title: 'App Features Screen 3',
    description: 'short description coontent short description content',
  ),
];
