import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void funcCallback(bool ?value) {
    setState(() {
      isChecked = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckBoxState: funcCallback,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool? checkBoxState;
  Function(bool?) ? toggleCheckBoxState;
  TaskCheckBox({this.checkBoxState, this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.blueAccent,
      value: checkBoxState,
      // onChanged: (value) {
      //   // THIS VALUE WILL CHANGE EVERYTIME WHEN USER CLICK ON BUTTON
      //   // setState(
      //   //   () {
      //   //     isChecked = value!;
      //   //   },
      //   // );

      // },
      onChanged: toggleCheckBoxState,
    );
  }
}
