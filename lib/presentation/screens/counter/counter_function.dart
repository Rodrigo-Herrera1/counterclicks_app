import 'package:flutter/material.dart';

class CounterFunctionsSreen extends StatefulWidget {
  const CounterFunctionsSreen({super.key});

  @override
  State<CounterFunctionsSreen> createState() => _CounterFunctionsSreenState();
}

class _CounterFunctionsSreenState extends State<CounterFunctionsSreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
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
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
            // if (clickCounter != 1)
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          SizedBox(height: 15),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),
          SizedBox(height: 15),
          CustomButton(
            icon: Icons.exposure_minus_1_rounded,
            onPressed: () {
              if (clickCounter == 0) return;
              setState(() {
                clickCounter--;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      focusColor: Colors.red,
      hoverColor: Colors.red,
      elevation: 20,
      backgroundColor: Colors.amber,
      highlightElevation: 5,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
