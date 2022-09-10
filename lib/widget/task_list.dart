// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoyee/models/task_data.dart';
import 'package:todoyee/widget/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, TaskData taskData, child) {
        // NOW WE ARE CALLILNG THE DATA AS taskData | WE CAN USE THIS INSTED OF USING PROVIDER.OF......
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index]
                  .title, // need to declacre TaskData taskData(DataType) , otherwise null check error happend
              isChecked: taskData.tasks[index].isDone,
              checkBoxCallback: (bool? checkboxState) {
                // setState(
                //   () {
                //     widget.tasks[index].toggleDone();
                //   },
                // );
                taskData.updateTask(taskData.tasks[index]);
              },
              longPressCallback: (){
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );

    // WE ARE USING A REPETATIVE KW IN THE FILE , PROVIDER.OF<TASKDATA>(CONTEXT)
    //WE CAN GET RID OF THIS BY USING CONSUMER PROVIDES BY PROVIDER PACKAGE
    // CONSUMER NEEDS TO BE WRAPPED AROUND THE PARANT OF THE WIDGET
    // CONSUMER NEEDS MULTIPLE ARGUMENTS LIKE WHAT SHOULD WE CALL THE DATA(DATA NAME)
  }
}
