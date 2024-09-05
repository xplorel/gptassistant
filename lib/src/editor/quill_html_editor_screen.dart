import 'package:flutter/material.dart';

class QuillHtmlEditorScreen extends StatefulWidget {
  const QuillHtmlEditorScreen({super.key});

  @override
  _QuillHtmlEditorScreenState createState() => _QuillHtmlEditorScreenState();
}

class _QuillHtmlEditorScreenState extends State<QuillHtmlEditorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("quillHtmleditor"),
      ),
    );
  }
}
