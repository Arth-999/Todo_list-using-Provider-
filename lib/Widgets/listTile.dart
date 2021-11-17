import 'package:flutter/material.dart';

class Listtile extends StatefulWidget {
  final String txt;
  Listtile(this.txt);

  @override
  _ListtileState createState() => _ListtileState();
}

class _ListtileState extends State<Listtile> {

  bool? isChecked1;
  bool isChecked2=false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          widget.txt,
          style: TextStyle(
              decoration: isChecked2 ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked2,
            onChanged: (value){
              setState(() {
                isChecked1=value;
                isChecked2=!isChecked2;
              });
            },
        ),
      ),
    );
  }
}

