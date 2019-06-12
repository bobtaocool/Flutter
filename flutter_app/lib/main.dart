import 'package:flutter/material.dart';
import 'package:flutter_app/page/textpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Demo',
      theme: ThemeData(

        primarySwatch: Colors.orange,

      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),

      routes: {
        '/Page0': (context) => textpage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget{

  MyHomePage({Key key,this.title}) : super(key:key);

  final String title;
  @override
  _homePageState createState() => _homePageState();

}

class _homePageState extends State<MyHomePage> {
  List<String> widgets = [
    '第14节 -- 文本框',
    '第15节 -- 图片和Icon',
    '第16节 -- 输入框',
    '第17节 -- SnackBar',
    '第18节 -- 对话框',
    '第19节 -- BottomSheet',
    '第20节 -- 菜单栏',
    '第21节 -- 手势识别Widget',
    '第24节 -- 弹性布局',
    '第25节 -- 线性布局',
    '第26节 -- 流式布局',
    '第27节 -- 层叠布局',
    '第28节 -- 容器类Widget',
    '第29节 -- 功能类Widget',
    '第30节 -- SingleChildScrollView',
    '第31节 -- ListView',
    '第32节 -- CustomScrollView',
    '第33节 -- GridView',
    '第34节 -- PageView',
    '第52节 -- 响应式编程',
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return GestureDetector(
          child: ListTile(title: Text(widgets[index]),),
          onTap: (){
            Navigator.pushNamed(context, '/Page' + index.toString())
          },
        );
      }, separatorBuilder: (context,index){}, itemCount: widgets.length),
    )
  }

}



