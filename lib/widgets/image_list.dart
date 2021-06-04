import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pics/models/image_model.dart';

// Pure component

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return buildImage(images[index]);
        });
  }

  Widget buildImage(ImageModel image) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        children: [
          Text(
            image.url,
            style: const TextStyle(color: Colors.blue),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              image.title,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
