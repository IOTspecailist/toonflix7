import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

//자동생성
class App extends StatefulWidget {
  //const App({super.key}); //자동생성
  @override //자동생성
  State<App> createState() => _AppState(); //=>는 return을 간략하게 표현한것
}

//자동생성
class _AppState extends State<App> {
  @override //자동생성
  Widget build(BuildContext context) {
    return MaterialApp(
      //위젯
      theme: ThemeData(
        //테마
        textTheme: const TextTheme(
          //텍스트테마
          titleLarge: TextStyle(
            //텍스트스타일
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        //위젯
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          //위젯
          child: Column(
            //위젯
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              //위젯리스트
              MyLargeTitle(), //StatelessWidget
            ],
          ),
        ),
      ),
    );
  }
}

//커스텀생성
class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    //생성자가 왜필요할까????????
    Key? key, //자료형바로뒤에 ?는 변수명에null을 할당하는걸 허용한단 의미
  }) : super(key: key); //super를 사용하여 상위클래스 생성자 매개변수에 넘긴다

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
