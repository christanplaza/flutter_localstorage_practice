import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Reference our box
  final _myBox = Hive.box('mybox');

  // Write Data
  void writeData() {
    _myBox.put(1, 'Tantan');
  }

  // Read Data
  void readData() {
    print(_myBox.get(1));
  }

  // Delete Data
  void deleteData() {
    _myBox.delete(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: writeData,
              child: Text('Write'),
              color: Colors.green,
            ),
            MaterialButton(
              onPressed: readData,
              child: Text('Read'),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: deleteData,
              child: Text('Delete'),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
