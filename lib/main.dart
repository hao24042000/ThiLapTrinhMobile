import 'package:flutter/material.dart';
import 'package:quanlycuahangmaytinh/DangNhap.dart';
import 'package:quanlycuahangmaytinh/Screens/login/login.dart';

// View Khách hàng

// void main() {
//   runApp(DangNhap());
// }



// View quản lý

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Đăng Nhập',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF2661FA),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}
// View quản lý

//



