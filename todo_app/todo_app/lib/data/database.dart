import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference hive box
  final _myBox = Hive.box('myBox');

  void createInitialData() {
    toDoList = [
      ["Go Gym Nerd", false],
      ["Food", false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updataDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}