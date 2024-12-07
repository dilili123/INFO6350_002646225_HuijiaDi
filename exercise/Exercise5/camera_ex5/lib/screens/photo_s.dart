import 'package:flutter/material.dart';
import 'dart:io';

class PhotoScreen extends StatelessWidget {
  final String imagePath;
  const PhotoScreen({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display screen"),
      ),
      body: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.file(File(imagePath)),
        ),
      ),
    );
  }
}