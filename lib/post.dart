import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PostPage extends StatefulWidget {

  @override
  _PostPagePageState createState() => _PostPagePageState();
}

class _PostPagePageState extends State<PostPage> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("投稿画面"),
      ),
      body: Center(
        child: TextField(
          controller: _textEditingController,
          enabled: true,
          maxLength: 50,
          style: TextStyle(color: Colors.black),
          obscureText: false,
          maxLines: 1,
          decoration: const InputDecoration(
            icon: Icon(Icons.speaker_notes),
            hintText: '投稿内容を記載します',
            labelText: '内容 * ',
          ),
        ),
      ),
    );
  }
}