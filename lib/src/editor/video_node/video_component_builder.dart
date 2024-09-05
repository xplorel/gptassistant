import 'package:gptassistant/src/editor/video_node/video_component.dart';
import 'package:gptassistant/src/editor/video_node/video_component_viewmodel.dart';
import 'package:gptassistant/src/editor/video_node/video_node.dart';
import 'package:super_editor/super_editor.dart';

import 'package:flutter/material.dart';

class VideoComponentBuilder implements ComponentBuilder {
  @override
  Widget? createComponent(SingleColumnDocumentComponentContext componentContext,
      SingleColumnLayoutComponentViewModel componentViewModel) {
    if (componentViewModel is! VideoComponentViewModel) {
      return null;
    }
    return VideoComponent(viewModel: componentViewModel);
  }

  @override
  SingleColumnLayoutComponentViewModel? createViewModel(
      Document document, DocumentNode node) {
    if (node is! VideoNode) {
      return null;
    }
    return VideoComponentViewModel(
      url: node.videoUrl,
      nodeId: node.id,
      padding: const EdgeInsets.all(8.0),
    );
  }
}
