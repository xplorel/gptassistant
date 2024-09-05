import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gptassistant/src/routers/routers_name.dart';
import 'package:gptassistant/src/routers/routers_page.dart';

// 秘钥
const String apiKey = "123";

void main() {
  runApp(GetMaterialApp(
    initialRoute: RoutersName.homePage,
    getPages: RouterPage.pages,
  ));
}
