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
      body: Column(
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
            children: [
              TextField(
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(),
                )),
              ),
            ],
          ),
          Row(
            //날짜
            children: [
              Text(
                '날 짜',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              Column(
                children: [Text('2024년 3월 11일')],
              ),
              Column(
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
            ],
          ),
          Row(
            //시간
            children: [
              Text(
                '시 간',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
          Row(//시작종료 텍스트
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('시작시간'),
              SizedBox(
                width: 80,
              ),
              Text('종료시간'),
            ],
          ),
          Row(//시작종료 시간표시
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            ],
          ),
          Row(
            //메모
            children: [
              Text(
                '메 모',
                style: TextStyle(decoration: TextDecoration.underline),
              ),

            ],
          ),
          Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color(0xFFF7E8A5),
    );
  }
}
