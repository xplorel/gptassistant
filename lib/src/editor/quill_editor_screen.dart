import 'dart:convert';

import 'package:flutter/material.dart';

// import 'package:flutter_quill/flutter_quill.dart' as quill;

class QuillEditorScreen extends StatefulWidget {
  const QuillEditorScreen({super.key});

  @override
  _QuillEditorScreenState createState() => _QuillEditorScreenState();
}

class _QuillEditorScreenState extends State<QuillEditorScreen> {
  //late quill.QuillController _controller;
  // late quill.FocusNode _focusNode;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //_loadDocumentFromJson();
  }
/*
  void _loadDocumentFromJson() {
    const jsonString = '''
    [
      {
        "insert": "Hello, world!\\n"
      },
      {
        "insert": "This is a rich text editor.\\n",
        "attributes": {
          "bold": true
        }
      },
      {
        "insert": "You can add various styles.\\n",
        "attributes": {
          "italic": true
        }
      }
    ]
    ''';
    final document = quill.Document.fromJson(jsonDecode(jsonString));

    _controller = quill.QuillController(
      document: document,
      selection: TextSelection.collapsed(offset: 0),
    );
  }
  */

  void saveData() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QuillEditor"),
        actions: [
          ElevatedButton.icon(
              onPressed: () {
                saveData();
              },
              label: Text("save")),
        ],
      ),
      body: Container(),
    );
  }
}

/*
 Container(
          color: Color.fromRGBO(239, 239, 239, 1),
          child: Column(
            children: [
              quill.QuillToolbar.basic(controller: _controller),
              Expanded(
                  child: quill.QuillEditor.basic(
                controller: _controller,
                readOnly: false,
              ))
            ],
          )),
*/