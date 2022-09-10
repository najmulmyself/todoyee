import 'package:flutter/widgets.dart';
import 'package:todoyee/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(
      title: 'Buy Milk',
      isDone: false,
    ),
    Task(
      title: 'Buy Egggs',
      isDone: false,
    ),
    Task(
      title: 'Buy Bread',
      isDone: false,
    ),
    Task(
      title: 'Buy Butter',
      isDone: false,
    ),
  ];
}
