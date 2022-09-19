import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _myBox = Hive.box('myBox');

  // 3 methods for CRUD operations
  // 1. Read
  // 2. Write
  // 3. Delete

  // read
  void read() {
    // print all key-value pairs
    // print(_myBox.toMap());
    _myBox.get('name');
  }

  // write
  void write() {
    _myBox.put('name', 'John Doe');
  }

  // delete
  void delete() {
    _myBox.delete('name');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          color: Colors.green[300],
          onPressed: () {
            read();
          },
          child: Text('Read',
              style: TextStyle(color: Colors.white.withOpacity(0.9))),
        ),
        MaterialButton(
          color: Colors.blue[300],
          onPressed: () {
            write();
          },
          child: Text('Write',
              style: TextStyle(color: Colors.white.withOpacity(0.9))),
        ),
        MaterialButton(
          color: Colors.red[300],
          onPressed: () {
            delete();
          },
          child: Text('Delete',
              style: TextStyle(color: Colors.white.withOpacity(0.9))),
        ),
      ],
    )));
  }
}
