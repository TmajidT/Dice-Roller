import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GraidientContainer(
          [
            Color.fromRGBO(73, 4, 119, 1),
            Color.fromRGBO(27, 164, 188, 1),
            Color.fromRGBO(167, 27, 188, 1)
          ],
        ),
      ),
    ),
  );
}
