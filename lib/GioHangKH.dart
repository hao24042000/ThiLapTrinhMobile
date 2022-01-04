import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quanlycuahangmaytinh/ThanhToanKH.dart';
import 'package:quanlycuahangmaytinh/ThongTin.dart';
import 'package:quanlycuahangmaytinh/TrangChuKH.dart';

class GioHang extends StatelessWidget {
  const GioHang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GioHangKh(),
    );
  }
}
class GioHangKh extends StatefulWidget {
  const GioHangKh({Key? key}) : super(key: key);

  @override
  _GioHangKhState createState() => _GioHangKhState();
}

class _GioHangKhState extends State<GioHangKh> {
  var ten = [
    "Laptop Asus 2021",
    "Laptop Asus 2020"
  ];
  var gia = [
    "15.000.000đ",
    "16.000.000đ"
  ];
  var anh = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    double width1 = MediaQuery.of(context).size.width * 0.3;

    return Scaffold(
      appBar: AppBar(title: Text("Giỏ Hàng"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: anh.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // This Will Call When User Click On ListView Item
              },
              // Card Which Holds Layout Of ListView Item
              child: Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(anh[index]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            ten[index],
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: width,
                            child: Text(
                              gia[index],
                              maxLines: 3,
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[500]),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: width1,
                            height: 45.0,
                            child: RaisedButton(
                              color: Colors.grey,
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Thông báo'),
                                  content: const Text('Bạn có muốn xóa sản phẩm khỏi giỏ hàng.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, 'OK'),
                                      child: const Text('Đồng ý'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, 'Cancel'),
                                      child: const Text('Không'),
                                    ),
                                  ],
                                ),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Text('Xóa', style: TextStyle(color: Colors.white),),
                                  Icon(Icons.delete, size: 35, color: Colors.black,),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: width1,
                            height: 45.0,
                            child: RaisedButton(
                              color: Colors.blueGrey,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ThanhToanKH()),
                                );
                              },
                              child: Row(
                                children: <Widget>[
                                  Text('Đặt Mua', style: TextStyle(color: Colors.white),),
                                  Icon(Icons.payment, size: 35, color: Colors.deepOrangeAccent,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.home,
              ),
              iconSize: 30,
              color: Colors.grey,
              splashColor: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TrangChuKH()),
                );
              },
            ),
            title: Text("Trang Chủ"),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.add_shopping_cart_sharp,
              ),
              iconSize: 30,
              color: Colors.blue,
              splashColor: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GioHangKh()),
                );
              },
            ),
            title: Text("Giỏ Hàng"),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.person,
              ),
              iconSize: 30,
              color: Colors.grey,
              splashColor: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThongTinKH()),
                );
              },
            ),
            title: Text("Thông Tin"),
          )
        ],
      ),
    );
  }
}

