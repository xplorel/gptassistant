import 'package:flutter/material.dart';
import 'package:gptassistant/src/editor/super_item.dart';

class SuperListPage extends StatefulWidget {
  const SuperListPage({super.key});

  @override
  _SuperListPageState createState() => _SuperListPageState();
}

class _SuperListPageState extends State<SuperListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("编辑器列表"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return SuperItem();
        },
      ),
    );
  }
}
