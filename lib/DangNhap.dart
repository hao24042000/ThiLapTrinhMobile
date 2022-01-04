import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quanlycuahangmaytinh/DangKi.dart';
import 'package:quanlycuahangmaytinh/TrangChuKH.dart';

class DangNhap extends StatelessWidget {
  const DangNhap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DangNhapKH(),
    );
  }
}

class DangNhapKH extends StatefulWidget {
  const DangNhapKH({Key? key}) : super(key: key);

  @override
  _DangNhapKHState createState() => _DangNhapKHState();
}

class _DangNhapKHState extends State<DangNhapKH> {
  var fkey = GlobalKey<FormState>();
  var txtUserName = TextEditingController();
  var txtPassWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Đăng Nhập'),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Cửa hàng Máy Tính',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Đăng Nhập',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: txtUserName,
                    validator: (value){
                      if (value == null || value.isEmpty)
                        return "Vui lòng nhập tên đăng nhập.";
                      else
                        return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Tên Đăng Nhập',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    validator: (value){
                      if (value == null || value.isEmpty)
                        return "Vui lòng nhập mật khẩu.";
                      else
                        return null;
                    },
                    obscureText: true,
                    controller: txtPassWord,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mật Khẩu',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Quên Mật Khẩu'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Đăng Nhập'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const TrangChuKH()),
                        );
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Bạn chưa có tài khoản?'),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Đăng Ký',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const DangKi()),
                            );
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}
