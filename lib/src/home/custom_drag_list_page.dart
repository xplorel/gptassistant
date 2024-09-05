import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Item {
  String headerTitle;
  String detailDes;
  bool isExpand;
  Item({
    required this.headerTitle,
    required this.detailDes,
    required this.isExpand,
  });
}

class CustomDragListPage extends StatefulWidget {
  const CustomDragListPage({super.key});

  @override
  _CustomDragListPageState createState() => _CustomDragListPageState();
}

class _CustomDragListPageState extends State<CustomDragListPage> {
  final List<Item> _data = List.generate(20, (int index) {
    return Item(
        headerTitle: "Item:$index",
        detailDes: '这是item index：$index',
        isExpand: false);
  });
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Item item = _data.removeAt(oldIndex);
      _data.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("拖拽"),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList(
              //  animationDuration: Duration(seconds: 2),
              expansionCallback: (int index, bool isExpanded) {
                print("Tapped on item $index----isExpanded:$isExpanded");
                setState(() {
                  _data[index].isExpand = isExpanded;
                });
              },
              children: _data.map<ExpansionPanel>((Item item) {
                return ExpansionPanel(
                    // backgroundColor: Colors.brown,
                    isExpanded: item.isExpand,
                    canTapOnHeader: true,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(item.headerTitle),
                      );
                    },
                    body: AnimatedContainer(
                        duration: const Duration(seconds: 2),
                        curve: Curves.bounceInOut,
                        child: ReorderableListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          onReorder: _onReorder,
                          children: _data.map((Item item) {
                            return ListTile(
                              key: Key(item.headerTitle),
                              title: Text(item.detailDes),
                              trailing: Icon(Icons.drag_handle),
                              onTap: () {
                                print("Tapped on item 222");
                                setState(() {
                                  _data.removeWhere((Item currentItem) =>
                                      item == currentItem);
                                });
                              },
                            );
                          }).toList(),
                        )));
              }).toList()),
        ));
  }
}
