import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  final outlineWrap = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xffF90640), Color(0xff8F00FF)],
    ),
  );

  final decorItem = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: const [
      BoxShadow(
        color: Color(0xffDED9FF),
        spreadRadius: 0,
        blurRadius: 10,
        offset: Offset(0, 0),
      ),
    ],
  );

  final companyItemStyle = const BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Color(0xffDED9FF),
        spreadRadius: 0,
        blurRadius: 10,
        offset: Offset(0, 0),
      ),
    ],
  );

  final companyItemImg = const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(8),
      topLeft: Radius.circular(8),
    ),
    boxShadow: [
      BoxShadow(
        color: Color(0xffDED9FF),
        spreadRadius: 0,
        blurRadius: 10,
        offset: Offset(0, 0),
      ),
    ],
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xffD96DFF), Color(0xff6322E0)],
    ),
  );

  final companyItemTitle = const BoxDecoration(
    borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(8),
      bottomLeft: Radius.circular(8),
    ),
    // color: Color(0xffF9F8FF),
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff9F8A8A),
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: double.infinity,
                height: 283,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(350),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  const Text(
                    'Главная',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: 90,
                    margin: EdgeInsets.fromLTRB(18, 20, 18, 44),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.only(left: 27, right: 20),
                              decoration: BoxDecoration(
                                color: Color(0xffFFD541),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(Icons.access_alarm),
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(bottom: 7),
                                child: const Text(
                                  'Начните зарабатывать!',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Приобретите тариф Behype-PRO \nи начните свою карьеру!',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 41, left: 14, right: 14),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        color: Color(0xffF9F8FF),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(right: 5, left: 5, bottom: 20),
                            child: const Text(
                              'Категории',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 125,
                                  padding: EdgeInsets.all(0.5),
                                  decoration: outlineWrap,
                                  margin: EdgeInsets.all(5),
                                  child: Container(
                                    decoration: decorItem,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(bottom: 18),
                                          child: Image.asset(
                                            'assets/images/one.png',
                                            height: 50,
                                          ),
                                        ),
                                        Container(
                                          child: Text('Реклама',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black,
                                              )),
                                        ),
                                        Container(
                                          child: Text(
                                            '106 кампаний',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffBDBDBD),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 125,
                                  padding: EdgeInsets.all(0.5),
                                  decoration: outlineWrap,
                                  margin: EdgeInsets.all(5),
                                  child: Container(
                                    decoration: decorItem,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(bottom: 18),
                                          child: Image.asset(
                                            'assets/images/two.png',
                                            height: 50,
                                          ),
                                        ),
                                        Container(
                                          child: Text('Взаимопиар',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black,
                                              )),
                                        ),
                                        Container(
                                          child: Text(
                                            '56 заявок',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffBDBDBD),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 125,
                                  padding: EdgeInsets.all(0.5),
                                  decoration: outlineWrap,
                                  margin: EdgeInsets.all(5),
                                  child: Container(
                                    decoration: decorItem,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(bottom: 18),
                                          child: Image.asset(
                                            'assets/images/three.png',
                                            height: 50,
                                          ),
                                        ),
                                        Container(
                                          child: Text('Бартер',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black,
                                              )),
                                        ),
                                        Container(
                                          child: Text(
                                            '245 заявок',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffBDBDBD),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 5,
                              right: 5,
                              top: 46,
                            ),
                            margin: const EdgeInsets.only(bottom: 29),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Рекламные кампании',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xffF90640),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 0,
                                        vertical: 0,
                                      )),
                                  child: const Text(
                                    'Все',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 24,
                                decoration: companyItemStyle,
                                margin: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.all(10),
                                      decoration: companyItemImg,
                                      child: Image.asset(
                                        'assets/images/company1.png',
                                        height: 110,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: double.infinity,
                                      height: 38,
                                      decoration: companyItemTitle,
                                      child: const Text(
                                        'В новом обновлении',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
