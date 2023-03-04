import 'package:flutter/material.dart';
import 'package:toonflix7/widgets/botton.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //빌드 위젯을 오버라이드
    return MaterialApp(
      // 위젯의 시작과 끝은 괄호다
      // 리턴에 위젯을 선언해버리네
      //이 맨처음 위젯이 맨아래 깔리는 땅 같은 느낌이고
      // 그다음 scaffold라는 위젯을 깔고 그위에 padding 위젯깔고 이런 느낌이다
      home: Scaffold(
        //home은 변수인데 타입이 위젯이라 scaffold 위젯으로 초기화
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        //Scaffold 위젯의 변수인 backgroundColor 는 color타입 변수
        body: Padding(
          //backgroundColor와 body 둘다 Scaffold 위젯의 변수지만
          // body는 자료형이 위젯이라 왼쪽에 하위클래스 라인이 생겼다
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //컬럼위젯을 개발자도구로 보면 폰 전체 세로범위를 나타낸다
            //컬럼전체 align을 왼쪽(start)으로 했지만 서브위젯에서
            //오른쪽으로 하면 컬럼 내에서 오른쪽으로 (시릴)가네
            children: [
              //List<위젯> 자료형인 children
              const SizedBox(
                //그냥 박스네 nico눈 박스크기를 가지고 화면내부 글자위치를 조정함
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //children은 List<위젯>이니까 대괄호로 시작
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '\$858,194,482',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Button(
                    text: 'Transfer',
                    bgColor: Color(0xFFF1B33B),
                    textColor: Colors.black,
                  ),
                  Button(
                    text: 'Request',
                    bgColor: Color(0xFFF1B33B),
                    textColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                //유로 이미지 카드는 컨테이너로 담았군
                //이미지는 컨테이너인가
                clipBehavior: Clip.hardEdge,
                //이 부분을 바꾸면 유로 로고가 컨테이너 범위를 초과한다

                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 27, 108, 189),
                  borderRadius: BorderRadius.circular(25), //모서리라운드
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Euro',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Text(
                                '799,848,004',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'EUR',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Transform.scale(
                        scale: 2.2,
                        child: Transform.translate(
                          offset: const Offset(-5, 12),
                          child: const Icon(
                            Icons.euro_rounded, //유로모양
                            color: Colors.white,
                            size: 88,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
