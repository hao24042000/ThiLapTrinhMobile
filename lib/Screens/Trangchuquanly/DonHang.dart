import 'package:flutter/material.dart';
import 'package:quanlycuahangmaytinh/Screens/Trangchuquanly/TrangChuQL.dart';

import 'KhachHang.dart';
import 'ThemSanPham.dart';

class DonHang extends StatelessWidget {
  const DonHang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DonHangQL(),
    );
  }
}
class DonHangQL extends StatefulWidget {
  const DonHangQL({Key? key}) : super(key: key);

  @override
  _DonHangQLState createState() => _DonHangQLState();
}

class _DonHangQLState extends State<DonHangQL> {
  var madon = [
    "Mã đơn: DH012",
    "Mã đơn: DH012",
    "Mã đơn: DH012",
    "Mã đơn: DH012",
  ];

  var makh = [
    "Mã Khách hàng: KH123456",
    "Mã Khách hàng: KH123456",
    "Mã Khách hàng: KH123456",
    "Mã Khách hàng: KH123456",
  ];

  var tenkh = [
    "Tên Khách hàng: Trương Văn Hào",
    "Tên Khách hàng: Hoàng Thu Trâm",
    "Tên Khách hàng: Trương Văn Khải",
    "Tên Khách hàng: Trương Nguyễn A"
  ];
  // Description List Here
  var giadon = [
    "Tổng tiền: 15.600.000đ",
    "Tổng tiền: 15.600.000đ",
    "Tổng tiền: 15.600.000đ",
    "Tổng tiền: 15.600.000đ",
  ];
  var tensp = [
    "Tên sản phẩm: Macbook 2021",
    "Tên sản phẩm: Dell 2021",
    "Tên sản phẩm: Lenovo 2021",
    "Tên sản phẩm: Asus 2021"
  ];
  var diachigiao = [
    "Địa Chỉ Giao Hàng: 05 Nguyễn Huệ - Huế",
    "Địa Chỉ Giao Hàng: 05 Nguyễn Huệ - Quảng Trị",
    "Địa Chỉ Giao Hàng: 77 Nguyễn Huệ - Thành Phố",
    "Địa Chỉ Giao Hàng: 05 Nguyễn Huệ - Huế",
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    double width1 = MediaQuery.of(context).size.width * 0.27;
    return Scaffold(
      appBar: AppBar(title: Text("Quản Lý"),
      centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: madon.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // This Will Call When User Click On ListView Item
              showDialogFunc(context, madon[index], makh[index], tenkh[index], giadon[index], tensp[index],diachigiao[index]);
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Text(
                      madon[index],
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          makh[index],
                          style: TextStyle(
                            fontSize: 20,
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
                            giadon[index],
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
                          height: 40.0,
                          child: RaisedButton(
                            color: Colors.grey,
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Thông báo'),
                                content: const Text('Bạn có muốn xóa đơn hàng?'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: const Text('Không',style: TextStyle(),),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'OK'),
                                    child: const Text('Xóa' , style: TextStyle(color: Colors.red),),
                                  ),
                                ],
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Text('Xóa đơn', style: TextStyle(color: Colors.white),),
                                Icon(Icons.delete, color: Colors.black,),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width1,
                          height: 40.0,
                          child: RaisedButton(
                            color: Colors.grey,
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Thông báo'),
                                content: const Text('Đơn đã duyệt'),
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
                                Text('Duyệt Đơn', style: TextStyle(color: Colors.red),),
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
                Icons.person,
              ),
              iconSize: 30,
              color: Colors.grey,
              splashColor: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KhachHang()),
                );
              },
            ),
            title: Text("Khách Hàng"),
          ),
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
                  MaterialPageRoute(builder: (context) => const TrangChuQL()),
                );
              },
            ),
            title: Text("Trang Chủ"),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.add,
              ),
              iconSize: 30,
              color: Colors.grey,
              splashColor: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThemSanPham()),
                );
              },
            ),
            title: Text("Thêm Mới"),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.add_chart_sharp,
              ),
              iconSize: 30,
              color: Colors.blue,
              splashColor: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DonHang()),
                );
              },
            ),
            title: Text("Đơn Hàng"),
          )
        ],
      ),
    );
  }
}

showDialogFunc(context, madon, makh, tenkh, giadon, tensp, diachigiao) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 230,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  madon,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    child: Text(
                      makh,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.lightBlue[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    child: Text(
                      tenkh,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.lightBlue[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    child: Text(
                      giadon,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.lightBlue[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    child: Text(
                      tensp,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.lightBlue[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    child: Text(
                      diachigiao,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.lightBlue[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}


