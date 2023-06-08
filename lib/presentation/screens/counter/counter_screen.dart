import 'package:flutter/material.dart';

class CounterScren extends StatefulWidget {
  const CounterScren({super.key});

  @override
  State<CounterScren> createState() => _CounterScrenState();
}

class _CounterScrenState extends State<CounterScren> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contador App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 130, fontWeight: FontWeight.w100)),
              //if(clickCounter == 1)
              Text('Click${clickCounter == 1 ? '' : 's'}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
              // if (clickCounter != 1)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              clickCounter++;
            });
          },
          child: const Icon(Icons.plus_one),
        ));
  }
}
