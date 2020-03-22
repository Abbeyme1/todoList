import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';
import 'package:todolist/screens/add_task_screen.dart';
import 'package:todolist/widgets/task_lists.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(
            Icons.add,
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => AddTaskScreen(
                      addTaskCallback: (newTaskTitle) {
                        Navigator.pop(context);
//                        print(newTaskTitle);
                      },
                    ));
//            addTaskScreen.mainBottomSheet(context);
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: 60.0, left: 40.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.list,
                        size: 35.0,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17.0,
                  ),
                  Text(
                    'TODO\'S',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 47.0,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).taskCount} Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0))),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
