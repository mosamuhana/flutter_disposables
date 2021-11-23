import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_disposables/flutter_disposables.dart';

class Example1Page extends StatefulWidget {
  const Example1Page({Key? key}) : super(key: key);

  @override
  _Example1PageState createState() => _Example1PageState();
}

class _Example1PageState extends State<Example1Page> with DisposableStateMixin {
  late final TextEditingController controller;
  String currentTime = '';

  @override
  void initState() {
    controller = TextEditingController().disposeBy(this);
    Timer.periodic(const Duration(seconds: 1), (t) {
      print('timer.tick: ${t.tick}');
      var now = DateTime.now();
      setState(() {
        currentTime = '${now.hour}:${now.minute}:${now.second}';
      });
    }).disposeBy(this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Disbosable Example 1')),
      body: Center(
        child: Column(
          children: [
            Text('Current: $currentTime'),
            const SizedBox(height: 20),
            TextField(
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
