import 'package:flutter/material.dart';
import 'package:todoyee/models/task.dart';
import 'package:todoyee/widget/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
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
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: tasks[index].title,
            isChecked: tasks[index].isDone,
            checkBoxCallback: (bool? checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            },
          );
        },
        itemCount: tasks.length);
  }
}
