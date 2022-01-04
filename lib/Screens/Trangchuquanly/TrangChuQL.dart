import 'package:flutter/material.dart';
import 'package:quanlycuahangmaytinh/Screens/Trangchuquanly/DonHang.dart';
import 'package:quanlycuahangmaytinh/Screens/Trangchuquanly/KhachHang.dart';
import 'package:quanlycuahangmaytinh/Screens/Trangchuquanly/SuaSanPham.dart';
import 'package:quanlycuahangmaytinh/Screens/Trangchuquanly/ThemSanPham.dart';

class TrangChuQL extends StatelessWidget {
  const TrangChuQL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TrangChuQLl(),
    );
  }
}
class TrangChuQLl extends StatefulWidget {

  const TrangChuQLl({Key? key}) : super(key: key);

  @override
  _TrangChuQLlState createState() => _TrangChuQLlState();
}

class _TrangChuQLlState extends State<TrangChuQLl> {
  var ten = [
    "Laptop Asus 2021",
    "Laptop Asus 2020",
    "MacBook 2019",
    "MacBook 2020",
    "MacBook 2018",
    "MacBook 2021",
    "Dell 2020"
  ];
  var gia = [
    "15.000.000đ",
    "16.000.000đ",
    "15.000.000đ",
    "15.000.000đ",
    "15.000.000đ",
    "15.000.000đ",
    "15.000.000đ",
  ];
  // Description List Here
  var mota = [
    "AMD Ryzen™ 3 3200U Mobile Processor (2.60Ghz upto 3.50GHz, 2Cores, 4Threads, 4MB Cache.",
    "AMD Ryzen™ 3 3200U Mobile Processor (2.60Ghz upto 3.50GHz, 2Cores, 4Threads, 4MB Cache.",
    "Laptop HP 240 G8 342A3PA (i3-1005G1, UHD Graphics, Ram 4GB, SSD 256GB, 14 Inch Narrow Bezel HD)",
    "Laptop HP 240 G8 342A3PA (i3-1005G1, UHD Graphics, Ram 4GB, SSD 256GB, 14 Inch Narrow Bezel HD)",
    "Laptop HP 240 G8 342A3PA (i3-1005G1, UHD Graphics, Ram 4GB, SSD 256GB, 14 Inch Narrow Bezel HD)",
    "Laptop HP 240 G8 342A3PA (i3-1005G1, UHD Graphics, Ram 4GB, SSD 256GB, 14 Inch Narrow Bezel HD)",
    "Laptop HP 240 G8 342A3PA (i3-1005G1, UHD Graphics, Ram 4GB, SSD 256GB, 14 Inch Narrow Bezel HD)"
  ];

  // Image Name List Here
  var anh = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",
    "assets/images/img5.jpg",
    "assets/images/img6.jpg",
    "assets/images/img7.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    double width1 = MediaQuery.of(context).size.width * 0.43;
    return Scaffold(
      appBar: AppBar(
        title: Text("Quản Lý"),
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
                          height: 40.0,
                          child: RaisedButton(
                            //child: Icon(Icons.edit, color: Colors.brown, size: 25,) ,
                            onPressed: () {  },
                            child: Row(
                              children: [
                                IconButton(onPressed: () {

                                }, icon: Icon(Icons.favorite)),
                                IconButton(onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const SuaSanPham()),
                                  );
                                }, icon: Icon(Icons.edit)),
                                IconButton(onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('Thông báo'),
                                      content: const Text('Bạn có muốn xóa sản phẩm?'),
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
              color: Colors.blue,
              splashColor: Colors.green,
              onPressed: () {

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

