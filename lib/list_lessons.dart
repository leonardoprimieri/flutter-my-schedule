import 'package:flutter/material.dart';
import 'package:my_schedule/config/routes.dart';
import 'package:my_schedule/model/lesson.dart';

class ListLessons extends StatefulWidget {
  const ListLessons({super.key});

  @override
  State<ListLessons> createState() => _ListLessonsState();
}

class _ListLessonsState extends State<ListLessons> {
  var lessons = const [
    Lesson(name: 'English', dayOfWeek: 'Monday', local: 'Room 4'),
    Lesson(name: 'Math', dayOfWeek: 'Wednesday', local: 'Room 3'),
    Lesson(name: 'Science', dayOfWeek: 'Friday', local: 'Room 12'),
    Lesson(name: 'History', dayOfWeek: 'Tuesday', local: 'Room 1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Schedule'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(addLessonPage)
                },
                icon: const Icon(Icons.add)),
          ],
        ),
        body: ListView.separated(
            itemBuilder: (_, index) => buildLessonItem(lessons[index]),
            separatorBuilder: (_, index) => const Divider(height: 1),
            itemCount: lessons.length));
  }

  Widget buildLessonItem(Lesson lesson) => ListTile(
        leading: const Icon(Icons.favorite_border_outlined),
        title: Text(lesson.name),
        subtitle: Text(lesson.dayOfWeek),
        trailing: Text(lesson.local),
      );
}
