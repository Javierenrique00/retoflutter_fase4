import 'package:example/ui/common/color_app.dart';
import 'package:flutter/material.dart';

class PageTemplate extends StatelessWidget {
  const PageTemplate({required this.title, required this.widget, super.key});
  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: ColorApp.appBarBackground,
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: widget
      ),
    );
  }
}