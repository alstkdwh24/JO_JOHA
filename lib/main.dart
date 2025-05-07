import 'package:flutter/material.dart';
import 'package:trip/drawerMenuBar/drawer_menu_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 배지 제거

      home: const MyHomePage(title: 'JO-JOHA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          //   Container(
          //     width: 130, // 원하는 너비 설정
          //     height: 40, // 원하는 높이 설정
          //     decoration: BoxDecoration(
          //       border: Border.all(width: 1, color: Colors.black),
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     child: TextButton(
          //       onPressed: () {},

          //       style: TextButton.styleFrom(
          //         padding: EdgeInsets.zero, // TextButton의 기본 패딩 제거
          //         minimumSize: const Size(130, 40), // Container와 동일한 크기 설정
          //         tapTargetSize: MaterialTapTargetSize.shrinkWrap, // 터치 영역 최소화
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(10), // 둥근 모서리 설정
          //         ),
          //       ),
          //       child: const Text("로그인/회원가입"),
          //     ),
          //   ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 36, // 아이콘 크기 설정
          ),
        ], // Corrected to use widget.title
      ),
      drawer: DrawerMenuBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
          ],
        ),
      ),
    );
  }
}
