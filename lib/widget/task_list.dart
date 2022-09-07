import 'package:flutter/material.dart';
import 'package:todoyee/models/task.dart';
import 'package:todoyee/widget/task_tile.dart';

class TaskList extends StatefulWidget {
  TaskList(this.tasks);
  final tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].title,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallback: (bool? checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
