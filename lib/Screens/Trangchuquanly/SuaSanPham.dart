import 'package:flutter/material.dart';

import 'TrangChuQL.dart';

class SuaSanPham extends StatelessWidget {
  const SuaSanPham({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SuaSanPhamQl(),
    );
  }
}

class SuaSanPhamQl extends StatefulWidget {
  const SuaSanPhamQl({Key? key}) : super(key: key);

  @override
  _SuaSanPhamQlState createState() => _SuaSanPhamQlState();
}

class _SuaSanPhamQlState extends State<SuaSanPhamQl> {

  var ten = [
    "Laptop Asus 2021",
  ];
  var gia = [
    "15.000.000đ",
  ];
  // Description List Here
  var mota = [
    "AMD Ryzen™ 3 3200U Mobile Processor (2.60Ghz upto 3.50GHz, 2Cores, 4Threads, 4MB Cache.",
  ];

  // Image Name List Here
  var anh = [
    "assets/images/img1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sửa Sản Phẩm"),
      centerTitle: true,
          actions: <Widget> [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TrangChuQL()),
                )
              },
            ),
            PopupMenuButton(
              icon: Icon(Icons.share),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("Facebook"),

                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Instagram"),
                ),
              ],
            )
          ]
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/images/img1.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Nhập Tên Mới",
                hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Nhập Giá Mới",
                hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Nhập Mô Tả Mới",
                hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 100,
            height: 50.0,
            child: RaisedButton(
              color: Colors.grey,
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Thông báo'),
                  content: const Text('Sửa Thông Tin Máy Tính Thành Công.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('Đồng ý'),
                    ),
                  ],
                ),
              ),
              child: Row(
                children: <Widget>[
                  Text('Sửa Máy Tính', style: TextStyle(color: Colors.white),),
                  Icon(Icons.edit, color: Colors.white,size: 35,),
                ],
              ),
            ),
          ),
        ],
      ),
      );
  }
}

