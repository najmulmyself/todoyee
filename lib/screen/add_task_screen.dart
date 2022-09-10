// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoyee/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function? addTaskCallback;

  const AddTaskScreen({super.key, this.addTaskCallback});
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true, // for autometically pops up keyboard;
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              ElevatedButton(
                // style: ButtonStyle(
                //   textStyle: Colors.white,
                //   backgroundColor:
                //       MaterialStateProperty.all(Colors.lightBlueAccent),
                // ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    textStyle: TextStyle(
                      color: Colors.white,
                    )),
                onPressed: () {
                  // print(newTaskTitle);
                  // addTaskCallback!(newTaskTitle);
                  Provider.of<TaskData>(
                    context,
                    listen: false,
                  ).addTask(newTaskTitle!);
                  Navigator.pop(context);
                },
                child: Text('Add'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
