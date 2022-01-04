import 'package:flutter/material.dart';
import 'package:quanlycuahangmaytinh/Screens/Trangchuquanly/DonHang.dart';
import 'package:quanlycuahangmaytinh/Screens/Trangchuquanly/SuaKhanhHang.dart';
import 'package:quanlycuahangmaytinh/Screens/Trangchuquanly/ThemSanPham.dart';
import 'package:quanlycuahangmaytinh/Screens/Trangchuquanly/TrangChuQL.dart';

class KhachHang extends StatelessWidget {
  const KhachHang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KhachHangQL(),
    );
  }
}
class KhachHangQL extends StatefulWidget {
  const KhachHangQL({Key? key}) : super(key: key);

  @override
  _KhachHangQLState createState() => _KhachHangQLState();
}

class _KhachHangQLState extends State<KhachHangQL> {
  var hoten = [
    "Trương Văn Hào",
    "Nguyễn Văn A",
    "Nguyễn Văn B",
    "Nguyễn Văn F",
    "Nguyễn Văn E",
    "Nguyễn Văn D",
    "Nguyễn Văn C"
  ];
  var ngaysinh = [
    "25-04-2000",
    "26-04-2000",
    "27-04-2000",
    "12-04-2000",
    "15-04-2000",
    "08-04-2000",
    "09-04-2000",
  ];
  // Description List Here
  var diachi = [
    "05 TTB - Tứ Hạ",
    "05 Nguyễn Huệ - Tứ Hạ",
    "Thừa Thiên Huế",
    "Quảng Trị",
    "05 TTB - Tứ Hạ",
    "05 TTB - Tứ Hạ",
    "05 TTB - Tứ Hạ",
  ];

  // Image Name List Here
  var anh = [
    "assets/images/kh1.jpg",
    "assets/images/kh2.jpg",
    "assets/images/kh3.jpg",
    "assets/images/kh4.jpg",
    "assets/images/kh5.jpg",
    "assets/images/kh6.jpg",
    "assets/images/kh7.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    double width1 = MediaQuery.of(context).size.width * 0.43;
    return Scaffold(
      appBar: AppBar(title: Text("Quản Lý"),
      centerTitle: true,),
      body: ListView.builder(
        itemCount: anh.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // This Will Call When User Click On ListView Item
              //showDialogFunc(context, anh[index], ten[index], gia[index], mota[index],);
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    child: Image.asset(anh[index],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          hoten[index],
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            ngaysinh[index],
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 15, color: Colors.lightBlue[500]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            diachi[index],
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 15, color: Colors.lightBlue[500]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width1,
                          height: 40.0,
                          child: RaisedButton(
                            color: Colors.lightBlue,
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Thông báo'),
                                content: const Text('Bạn đã thêm sản phẩm vào giỏ.'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'OK'),
                                    child: const Text('Đồng ý'),
                                  ),
                                ],
                              ),
                            ),
                            child: Row(
                              children: [
                                IconButton(onPressed: () {

                                }, icon: Icon(Icons.favorite)),
                                IconButton(onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const SuaKhachHang()),
                                  );
                                }, icon: Icon(Icons.edit)),
                                IconButton(onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    title: const Text('Thông báo'),
                                    content: const Text('Bạn có muốn xóa khách hàng?'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () => Navigator.pop(context, 'OK'),
                                        child: const Text('Đồng ý'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(context, 'Cancel'),
                                        child: const Text('Không',style: TextStyle(color: Colors.red),),
                                      ),
                                    ],
                                  ),
                                ), icon: Icon(Icons.delete)),
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
              color: Colors.blue,
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
              color: Colors.grey,
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

