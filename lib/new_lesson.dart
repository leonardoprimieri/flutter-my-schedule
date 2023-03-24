import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewLesson extends StatelessWidget {
  const NewLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Lesson'),
      ),
      body: const Center(
        child: Text('New Lesson'),
      ),
    );
  }
}
