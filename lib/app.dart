import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:pics/models/image_model.dart';
import 'dart:convert';

import 'package:pics/widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  fetchImage() async {
    counter++;
    Uri uri =  Uri.http('jsonplaceholder.typicode.com', '/photos/$counter');
    final response = await get(uri);
    Map<String, dynamic> parsedJson = json.decode(response.body);
    ImageModel imageModel = ImageModel.fromJson(parsedJson);
    setState(() {
      images.add(imageModel);  
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          // ignore: avoid_print
          onPressed: () => {
            fetchImage()
          },
        ),
        appBar: AppBar(
          title: const Text('Swapnil'),
        ),
      ),
    );
  }
}
