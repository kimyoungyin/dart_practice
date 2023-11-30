import 'package:flutter/material.dart';

void main() {
  runApp(
    const App(),
  );
}

// flutter root widget
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // 그저 class property
  List<int> numbers = [];

  void onClickIncrement() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  void onClickDecrement() {
    setState(() {
      if (numbers.isNotEmpty) {
        numbers.removeLast();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfff4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "클릭 횟수",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              for (var n in numbers)
                Text(
                  "$n",
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              IconButton(
                iconSize: 40,
                onPressed: onClickIncrement,
                icon: const Icon(Icons.add_box_rounded),
              ),
              IconButton(
                iconSize: 40,
                onPressed: onClickDecrement,
                icon: const Icon(Icons.remove_circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
