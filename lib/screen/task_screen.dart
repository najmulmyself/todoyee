// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoyee/models/task.dart';
import 'package:todoyee/models/task_data.dart';
import 'package:todoyee/screen/add_task_screen.dart';
import 'package:todoyee/widget/task_list.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(
              addTaskCallback: (newTaskTile) {
                // print(newTaskTile);
                // setState(
                //   () {
                //     tasks.add(
                //       Task(
                //         title: newTaskTile,
                //         // isDone: false, // default value is false
                //       ),
                //     );
                //   },
                // );
              },
            ),
          );
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    color: Colors.lightBlueAccent,
                    Icons.list,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoyee',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              // height: 300, //NO  NEED TO ADD HEIGHT , EXPANDED WILL TAKE ALL THE SPACE AVAILABLE
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
