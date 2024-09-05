import 'package:super_editor/super_editor.dart';

class VideoComponentViewModel extends SingleColumnLayoutComponentViewModel {
  final String url;

  VideoComponentViewModel({
    required this.url,
    required super.nodeId,
    super.maxWidth,
    required super.padding,
  });
  @override
  SingleColumnLayoutComponentViewModel copy() {
    return VideoComponentViewModel(
      url: url,
      nodeId: nodeId,
      maxWidth: maxWidth,
      padding: padding,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VideoComponentViewModel &&
          runtimeType == other.runtimeType &&
          nodeId == other.nodeId &&
          url == other.url &&
          maxWidth == other.maxWidth &&
          padding == other.padding;

  @override
  int get hashCode => super.hashCode ^ url.hashCode;
}
