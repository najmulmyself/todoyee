// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                onPressed: () {},
                child: Text('Add'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
