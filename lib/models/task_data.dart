import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier{

  List<String> tasks = [
    'Buy Milk',
    'Buy Bread',
    'Buy Eggs',
  ];

  int get count{
    return tasks.length;
  }

  void addTask(String newVal){
    tasks.add(newVal);
    notifyListeners();
  }


}