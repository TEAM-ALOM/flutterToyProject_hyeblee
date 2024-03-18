import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const TodoApp(),
    );
  }
}

class Todo {
  final String title;
  final String description;

  Todo({required this.title, required this.description});
}

class TodoApp extends StatefulWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  State<TodoApp> createState() => _TodoApp();
}

class _TodoApp extends State<TodoApp> {
  String title = "";
  String description = "";

  List<Todo> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "오늘의 할일이 무엇인가요?", //타이틀
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 21),
        ),
        backgroundColor: Color(0xFFF7E8A5),
        leading: TextButton(
          onPressed: () {}, //취소버튼
          child: Text(
            '취소',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {}, //완료버튼
              child: Text(
                '완료',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: 350,
          height: 900,
          child: Column(
            children: [
              Row(
                //할일
                children: [
                  Text(
                    '할 일',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ],
              ),
              Column(
                //텍스트필드
                children: [
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(),
                    )),
                  ),
                ],
              ),
              Container(
                height: 80,
                child: Row(
                  //날짜
                  children: [
                    Text(
                      '날 짜',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 60),
                      child: Column(
                        children: [Text('2024년 3월 11일')],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 60),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFFD70F),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(20), // 원하는 모양의 각도 지정
                              ),
                              padding: EdgeInsets.all(10), // 버튼 안의 내용물 간격 조절
                            ),
                            child: Text(
                              '날짜 선택',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


                 Padding(
                   padding: const EdgeInsets.only(top:30, bottom:15),
                   child: Row(
                    //시간
                    children: [
                      Text(
                        '시 간',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ],
                                   ),
                 ),

              Row(
                //시작종료 텍스트
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('시작시간'),
                  SizedBox(
                    width: 60,
                  ),
                  Text('종료시간'),
                ],
              ),
              Row(
                //시작종료 시간표시
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
              Padding(padding: EdgeInsets.only(bottom:20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 65),
                      child: ElevatedButton(onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(92,40),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), // 원하는 모양의 각도 지정
                              ),
                          ),
                          child: Text('00 : 00')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: ElevatedButton(onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(92,40),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), // 원하는 모양의 각도 지정
                            ),
                          ),
                          child: Text('23 : 59')),
                    ),
                  ],
                ),
              ),
              Row(
                //메모
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      '메 모',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                   TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 160),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFF7E8A5),
    );
  }
}
