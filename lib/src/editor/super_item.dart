import 'package:flutter/material.dart';
import 'package:super_editor/super_editor.dart';

class SuperItem extends StatefulWidget {
  const SuperItem({Key? key}) : super(key: key);

  @override
  _SuperItemState createState() => _SuperItemState();
}

class _SuperItemState extends State<SuperItem> {
  late MutableDocument _doc;
  late MutableDocumentComposer _composer;
  late Editor _docEditor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _doc = _createDocument1();
    // _doc = _createDocument1();
    _composer = MutableDocumentComposer();
    _docEditor =
        createDefaultDocumentEditor(document: _doc, composer: _composer);
  }

  MutableDocument _createDocument1() {
    return MutableDocument(
      nodes: [
        ParagraphNode(
          id: Editor.createNodeId(),
          text: AttributedText('Document #1'),
          metadata: {
            'blockType': header1Attribution,
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 550,
        color: Colors.brown,
        child: SuperEditor(
          editor: _docEditor,
          // componentBuilders: componentBuilders,
          inputSource: TextInputSource.ime,
          stylesheet: defaultStylesheet.copyWith(
            documentPadding:
                const EdgeInsets.symmetric(vertical: 56, horizontal: 24),
          ),
        ));
  }
}
