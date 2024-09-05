import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';

class QuillHtmlEditorScreen extends StatefulWidget {
  const QuillHtmlEditorScreen({super.key});

  @override
  _QuillHtmlEditorScreenState createState() => _QuillHtmlEditorScreenState();
}

class _QuillHtmlEditorScreenState extends State<QuillHtmlEditorScreen> {
  late String md;

  @override
  void initState() {
    md = "# 你好";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Markdown_widget"),
      ),
      body: MarkdownWidget(
        data: md,
      ),
    );
  }
}
