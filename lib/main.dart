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
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 40,
            color: Colors.red[200],
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xfff4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyBigTitle() : const Text("nothing"),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(
                  Icons.remove_red_eye,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyBigTitle extends StatefulWidget {
  const MyBigTitle({
    super.key,
  });

  @override
  State<MyBigTitle> createState() => _MyBigTitleState();
}

class _MyBigTitleState extends State<MyBigTitle> {
  // 대부분에 경우 initState가 필요 없음
  // 부모의 state를 사용해야 하는 경우, api를 구독해야 하는 경우
  // 이는 무조건 build보다 먼저 호출 되어야 하며, 단 한 번 호출됨
  // 무조건 super.initState()를 호출해야 함
  @override
  void initState() {
    super.initState();
    print("init");
  }

  // 위젯이 스크린에서 사라질 때(위젯 트리에서 제거될 때)
  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Text(
      "큰 타이틀",
      style: TextStyle(
          fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
          color: Theme.of(context).textTheme.titleLarge?.color),
    );
  }
}
