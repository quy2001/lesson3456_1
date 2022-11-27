import 'package:flutter/material.dart';

void main() {
  int soLanBamNut = 0;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Test Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Đây là page 2'),
              ElevatedButton(onPressed: (){
                soLanBamNut++;
                print('Nút đã được bấm : $soLanBamNut' );
              },
                  child: Text('Click me'))
            ],
          ),),
      ),
    ),
  );
}