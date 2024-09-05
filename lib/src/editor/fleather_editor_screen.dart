import 'dart:convert';

import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';

class FleatherEditorScreen extends StatefulWidget {
  const FleatherEditorScreen({super.key});

  @override
  _FleatherEditorScreenState createState() => _FleatherEditorScreenState();
}

class _FleatherEditorScreenState extends State<FleatherEditorScreen> {
  late FleatherController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ParchmentDocument document = ParchmentDocument.fromJson([
      {"insert": "欢迎使用 Fleather!\n"}
    ]);
    _controller = FleatherController(document: document);
  }

  void saveData() {
    final delta = _controller.document.toDelta();
    final jsonData = jsonEncode(delta.toJson());

    print("李大钊---保存数据：${jsonData}》》》");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FleatherEditorScreen"),
        actions: [
          ElevatedButton.icon(
              onPressed: () {
                saveData();
              },
              label: Text("FleatherEditorScreen")),
        ],
      ),
      body: Container(
          color: Color.fromRGBO(239, 239, 239, 1),
          child: Column(
            children: [
              FleatherToolbar.basic(controller: _controller),
              Expanded(child: FleatherEditor(controller: _controller))
            ],
          )),
    );
  }
}
