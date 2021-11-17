import 'package:flutter/material.dart';
import 'package:todo_list/Screens/Taskscreen.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';

const kTextFieldDecoration=InputDecoration(
  hintText: '',
  contentPadding:
  EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 4.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context)=>TaskData(),
        child:MaterialApp(home: TasksScreen()));
  }
}
