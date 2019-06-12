import 'package:flutter/material.dart';

class textpage extends StatelessWidget
{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("文本框"),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: ListTile(
              title: Text("text"),
            ),
            onTap: (){

            },
          )
        ],
      ),
    )
  }
}