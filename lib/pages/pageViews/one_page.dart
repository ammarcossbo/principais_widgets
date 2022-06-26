import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200, //MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.rectangle,
          ),
          child: Center(
            child: Text(
              "Olá Mundo!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
        //Text('Ola mundo'),
        Row(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.red,
              child: Center(
                child: Text("Container 1"),
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.purple,
              child: Center(
                child: Text("Container 2"),
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.pink,
              child: Center(
                child: Text("Container 3"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
