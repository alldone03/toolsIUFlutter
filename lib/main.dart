import 'package:flutter/material.dart';
// import 'package:toolsapp/view/tester.dart';
import 'package:toolsapp/view/tools.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    title: "UI App",
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => const ToolsView(),
      // "/": (context) => const TestViewData(),
    },
  ));
}
