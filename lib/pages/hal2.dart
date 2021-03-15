import 'package:flutter/material.dart';
import '../theme/colors.dart';

void main() {
  runApp(Hal2());
}

class Hal2 extends StatefulWidget {
  @override
  _Hal2State createState() => _Hal2State();
}

class _Hal2State extends State<Hal2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            color: black,
          ),
          Container(
            color: red,
          ),
          Container(
            color: black,
          ),
          Container(
            color: red,
          ),
          Container(
            color: black,
          ),
          Container(
            color: red,
          ),
          Container(
            color: black,
          ),
          Container(
            color: red,
          ),
        ],
      ),
    );
  }
}
