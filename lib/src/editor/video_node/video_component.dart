import 'package:flutter/material.dart';
import 'package:gptassistant/src/editor/video_node/video_component_viewmodel.dart';

class VideoComponent extends StatelessWidget {
  final VideoComponentViewModel viewModel;

  const VideoComponent({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    print("李大钊0000${viewModel.url}-------------------------------");
    return Container(
      color: Colors.orange,
      width: double.infinity,
      height: 150,
      child: Text(viewModel.url ?? 'URL is null'),
    );
  }
}
