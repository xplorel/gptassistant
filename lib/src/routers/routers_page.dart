import 'package:get/get.dart';
import 'package:gptassistant/src/home/custom_drag_list_page.dart';
import 'package:gptassistant/src/editor/fleather_editor_screen.dart';
import 'package:gptassistant/src/editor/quill_editor_screen.dart';
import 'package:gptassistant/src/editor/quill_html_editor_screen.dart';
import 'package:gptassistant/src/editor/super_editor_screen.dart';
import 'package:gptassistant/src/editor/super_list_page.dart';
import 'package:gptassistant/src/home/home_page.dart';
import 'package:gptassistant/src/routers/routers_name.dart';

class RouterPage {
  static final pages = [
    GetPage(name: RoutersName.homePage, page: () => const HomePage()),
    GetPage(
        name: RoutersName.quillEditorPage,
        page: () => const QuillEditorScreen()),
    GetPage(
        name: RoutersName.quillHtmlEditorPage,
        page: () => const QuillHtmlEditorScreen()),
    GetPage(
        name: RoutersName.superEditorPage,
        page: () => const SuperEditorScreen()),
    GetPage(
        name: RoutersName.fleatherEditorPage,
        page: () => const FleatherEditorScreen()),
    GetPage(
        name: RoutersName.enhancedEditorPage,
        page: () => const FleatherEditorScreen()),
    GetPage(name: RoutersName.superListPage, page: () => const SuperListPage()),
    GetPage(
        name: RoutersName.dragListPage, page: () => const CustomDragListPage()),
  ];
}
