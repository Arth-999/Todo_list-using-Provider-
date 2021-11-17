import 'package:flutter/material.dart';
import 'package:todo_list/Widgets/listTile.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';

class DynamicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, tt, child) {
      return ListView.builder(
          itemBuilder: (context, index) {
            return Listtile(tt.tasks[index]);
          },
          itemCount: tt.count);
    });
  }
}
