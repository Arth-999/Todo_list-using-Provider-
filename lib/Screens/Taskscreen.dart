import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/Widgets/list.dart';
import 'package:todo_list/Screens/Add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => SingleChildScrollView(
                child: AddTask(),
              ),
            );
          },
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.fromLTRB(50.0, 50.0, 8.0, 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Icon(
                          Icons.list_outlined,
                          size: 60,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    Container(
                      child: Text(
                        'Todoey',
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        '${Provider.of<TaskData>(context).count} Tasks',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  color: Colors.white,
                  child: DynamicList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
