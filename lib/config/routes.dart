import 'package:my_schedule/list_lessons.dart';
import 'package:my_schedule/new_lesson.dart';

const String homePage = '/';
const String addLessonPage = '/new';

var routes = {
  homePage: (context) => const ListLessons(),
  addLessonPage: (context) => const NewLesson(),
};
