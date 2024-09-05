import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gptassistant/src/routers/routers_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
      ),
      body: ListView(
        children: [
          ElevatedButton.icon(
              onPressed: () {
                Get.toNamed(RoutersName.quillEditorPage);
              },
              label: Text("QuillEditorScreen")),
          ElevatedButton.icon(
              onPressed: () {
                Get.toNamed(RoutersName.superEditorPage);
              },
              label: Text("SuperEditorScreen")),
          ElevatedButton.icon(
              onPressed: () {
                Get.toNamed(RoutersName.fleatherEditorPage);
              },
              label: Text("FleatherEditorScreen")),
          ElevatedButton.icon(
              onPressed: () {
                Get.toNamed(RoutersName.quillHtmlEditorPage);
              },
              label: Text("super列表")),
          ElevatedButton.icon(
              onPressed: () {
                Get.toNamed(RoutersName.dragListPage);
              },
              label: Text("拖拽列表")),
        ],
      ),
    );
  }
}
