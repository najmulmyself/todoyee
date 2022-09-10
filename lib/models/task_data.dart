import 'package:flutter/widgets.dart';
import 'package:todoyee/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(
      title: 'Buy Milk',
    ),
    Task(
      title: 'Buy Egggs',
    ),
    Task(
      title: 'Buy Bread',
    ),
    Task(
      title: 'Buy Butter',
    ),
  ];

  void addTask(String newTask) {
    tasks.add(Task(title: newTask));
    notifyListeners();
  }
}
