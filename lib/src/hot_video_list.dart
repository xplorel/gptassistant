import 'package:flutter/material.dart';

class HotVideoList extends StatefulWidget {
  const HotVideoList({Key? key}) : super(key: key);

  @override
  _HotVideoListState createState() => _HotVideoListState();
}

class _HotVideoListState extends State<HotVideoList> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      print("${_scrollController.position}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
