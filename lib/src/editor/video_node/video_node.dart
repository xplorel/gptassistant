import 'package:flutter/material.dart';
import 'package:super_editor/super_editor.dart';

class VideoNode extends BlockNode with ChangeNotifier {
  VideoNode({
    required this.id,
    required String videoUrl,
    ExpectedSize? expectedVideoSize,
    String altText = '',
    Map<String, dynamic>? metadata,
  })  : _videoUrl = videoUrl,
        _expectedVideoSize = expectedVideoSize,
        _altText = altText {
    this.metadata = metadata;

    putMetadataValue("blockType", const NamedAttribution("video"));
  }

  @override
  final String id;

  String _videoUrl;
  String get videoUrl => _videoUrl;
  set videoUrl(String newVideoUrl) {
    if (newVideoUrl != _videoUrl) {
      _videoUrl = newVideoUrl;
      notifyListeners();
    }
  }

  ExpectedSize? get expectedVideoSize => _expectedVideoSize;
  ExpectedSize? _expectedVideoSize;
  set expectedVideoSize(ExpectedSize? newValue) {
    if (newValue == _expectedVideoSize) {
      return;
    }

    _expectedVideoSize = newValue;

    notifyListeners();
  }

  String _altText;
  String get altText => _altText;
  set altText(String newAltText) {
    if (newAltText != _altText) {
      _altText = newAltText;
      notifyListeners();
    }
  }

  @override
  String? copyContent(dynamic selection) {
    if (selection is! UpstreamDownstreamNodeSelection) {
      throw Exception(
          'VideoNode can only copy content from a UpstreamDownstreamNodeSelection.');
    }

    return !selection.isCollapsed ? _videoUrl : null;
  }

  @override
  bool hasEquivalentContent(DocumentNode other) {
    return other is VideoNode &&
        videoUrl == other.videoUrl &&
        altText == other.altText;
  }

  @override
  VideoNode copy() {
    return VideoNode(
      id: id,
      videoUrl: videoUrl,
      expectedVideoSize: expectedVideoSize,
      altText: altText,
      metadata: Map.from(metadata),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VideoNode &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          _videoUrl == other._videoUrl &&
          _altText == other._altText;

  @override
  int get hashCode => id.hashCode ^ _videoUrl.hashCode ^ _altText.hashCode;
}
