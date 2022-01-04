import 'package:flutter/material.dart';

import 'TrangChuQL.dart';

class SuaKhachHang extends StatelessWidget {
  const SuaKhachHang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SuaKhachHangQL()
    );
  }
}
class SuaKhachHangQL extends StatefulWidget {
  const SuaKhachHangQL({Key? key}) : super(key: key);

  @override
  _SuaKhachHangQLState createState() => _SuaKhachHangQLState();
}

class _SuaKhachHangQLState extends State<SuaKhachHangQL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sửa Thông Tin Khách Hàng"),
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
            'assets/images/kh1.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Nhập Họ Tên Khách Hàng Mới",
                hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Nhập Ngày Sinh Mới",
                hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Nhập Địa Chỉ Mới",
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
                  content: const Text('Sửa Thông Tin Khách Hàng Thành Công.'),
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
                  Text('Sửa Khách Hàng', style: TextStyle(color: Colors.white),),
                  Icon(Icons.edit, color: Colors.black,size: 35,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

