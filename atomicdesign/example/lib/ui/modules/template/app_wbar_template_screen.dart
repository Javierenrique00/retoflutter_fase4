import 'package:atomicdesign/ui/template/app_wbar_template.dart';
import 'package:flutter/material.dart';

class AppWbarTemplateScreen extends StatelessWidget {
  const AppWbarTemplateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppWbarTemplate(title: 'Title',counter: '3',onCLickCounter: (){},child: const Text('Content'),);
  }
}