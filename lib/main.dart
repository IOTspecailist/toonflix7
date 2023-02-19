import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Scaffold는 위젯
        appBar: AppBar(
          // AppBar도 위젯
          title: Text('Hello flutter!'), //Text도 위젯
        ),
        body: Center(
          // Center도 위젯
          child: Text('Hello worlDd!'),
        ),
      ),
    );
  }
}
// 컨트롤 눌러서 들어가보면 다 위젯 상속받고 있는 class 안에 선언된 변수들이다
