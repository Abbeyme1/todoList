import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

//class AddTaskScreens {
//  mainBottomSheet(BuildContext context) {
//    showModalBottomSheet(
//        context: context,
//        builder: (BuildContext context) {
//          return Container(
//            color: Color(0xff757575),
//            child: Container(
//              padding: EdgeInsets.all(20.0),
//              decoration: BoxDecoration(
//                  color: Colors.white,
//                  borderRadius: BorderRadius.only(
//                      topRight: Radius.circular(20.0),
//                      topLeft: Radius.circular(20.0))),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: <Widget>[
//                  Text(
//                    'Add Task',
//                    textAlign: TextAlign.center,
//                    style: TextStyle(
//                        color: Colors.lightBlueAccent,
//                        fontSize: 30.0,
//                        fontWeight: FontWeight.w500),
//                  ),
//                  TextField(
//                    autofocus: true,
//                    textAlign: TextAlign.center,
//                  ),
//                  FlatButton(
//                    child: Text(
//                      'Add',
//                      style: TextStyle(
//                        color: Colors.white,
//                      ),
//                    ),
//                    color: Colors.lightBlueAccent,
//                    onPressed: () {},
//                  )
//                ],
//              ),
//            ),
//          );
//        });
//  }
//}

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen({this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500),
              ),
              TextField(
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ));
  }
}
