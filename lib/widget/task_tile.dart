import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final Function(bool?)? checkBoxCallback;
  final Function()? longPressCallback;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkBoxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle!,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        value: isChecked,
        // onChanged: (value) {
        //   // THIS VALUE WILL CHANGE EVERYTIME WHEN USER CLICK ON BUTTON
        //   // setState(
        //   //   () {
        //   //     isChecked = value!;
        //   //   },
        //   // );

        // },
        onChanged: checkBoxCallback,
      ),
      onLongPress: longPressCallback,
    );
  }
}

// need to refactor code with provider


// void funcCallback(bool ?value) {
//     setState(() {
//       isChecked = value!;
//     });
//   }