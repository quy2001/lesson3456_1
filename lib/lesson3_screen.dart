import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}
class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Test Home Page'),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello',style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.red),
              ),
              SizedBox(height: 50,),//SizedBox(height:...,width:...), nếu dùng column thì dùng mỗi height để khoảng cách, còn row thì dùng width
              buildRow(),
              Image.network('https://static.wikia.nocookie.net/marveldatabase/images/0/0a/Iron_Man_Vol_6_1_Brooks_Variant_Textless.jpg/revision/latest?cb=20211207231858',
                width: 200,),
              ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Nut đã được bấm!')));
              },
                  child: Text('Click me'))//đầu tiên là source ảnh src,chiều rộng, chiều cao của ảnh(có thể dùng cả 3 hoặc 1 số thuộc tính tùy thích)
            ],
          ),
        ),
      );
    }
  }

//có thể tách hàm riêng cho row
Widget buildRow(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.network('https://i.pinimg.com/originals/3e/2f/6a/3e2f6a9ce186fe59b4a7d392e1c96764.jpg',width: 100,height: 200,),
      SizedBox(width: 10,),
      Image.network('https://static.wikia.nocookie.net/marveldatabase/images/6/63/Black_Panther_Vol_8_1_Devil_Dog_Comics_and_Jolzar_Collectibles_Exclusive_Virgin_Variant.jpg/revision/latest?cb=20210804214952',width: 100,height: 200,)
    ],
  );
}