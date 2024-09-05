import 'package:flutter/material.dart';
import 'package:gptassistant/src/editor/super_editor_screen.dart';
// import 'package:gptassistant/src/editor/super_editor_screen.dart';
// import 'package:gptassistant/src/editor/video_node/video_component_builder.dart';
// import 'package:gptassistant/src/editor/video_node/video_node.dart';
import 'package:super_editor/super_editor.dart';
export 'package:super_editor_markdown/super_editor_markdown.dart';

class SuperEditorScreen extends StatefulWidget {
  const SuperEditorScreen({super.key});

  @override
  _SuperEditorScreenState createState() => _SuperEditorScreenState();
}

class _SuperEditorScreenState extends State<SuperEditorScreen> {
  // late final EditorState _editor;

  late MutableDocument _doc;
  late MutableDocumentComposer _composer;
  late Editor _docEditor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    String mdContent = ''''
 # hello
 ## world
 ### nihao *嘿嘿*
''';
    _doc = deserializeMarkdownToDocument(mdContent);
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
        ParagraphNode(
          id: Editor.createNodeId(),
          text: AttributedText(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed sagittis urna. Aenean mattis ante justo, quis sollicitudin metus interdum id. Aenean ornare urna ac enim consequat mollis. In aliquet convallis efficitur. Phasellus convallis purus in fringilla scelerisque. Ut ac orci a turpis egestas lobortis. Morbi aliquam dapibus sem, vitae sodales arcu ultrices eu. Duis vulputate mauris quam, eleifend pulvinar quam blandit eget.',
          ),
        ),
        ImageNode(
            id: Editor.createNodeId(),
            imageUrl:
                "http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg"),
      ],
    );
  }
  /*
   // VideoNode(
    id: Editor.createNodeId(),
            videoUrl:
                'http://e.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e542494057fbb2fb4316d81e.jpg')
  */

  @override
  Widget build(BuildContext context) {
    final componentBuilders = [
      const ParagraphComponentBuilder(),
      // VideoComponentBuilder(),
      ...defaultComponentBuilders,
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text("SuperEditorScreen"),
        ),
        body: Center(
          child: Column(children: [
            Expanded(
                child: SuperEditor(
              editor: _docEditor,
              componentBuilders: componentBuilders,
              inputSource: TextInputSource.ime,
              stylesheet: defaultStylesheet.copyWith(
                documentPadding:
                    const EdgeInsets.symmetric(vertical: 56, horizontal: 24),
              ),
            )),
          ]),
        ));
  }
}
