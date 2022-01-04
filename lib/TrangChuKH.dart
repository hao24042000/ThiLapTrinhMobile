import 'package:flutter/material.dart';
import 'package:quanlycuahangmaytinh/GioHangKH.dart';
import 'package:quanlycuahangmaytinh/ThongTin.dart';

class TrangChu extends StatelessWidget {
  const TrangChu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TrangChuKH(),
    );
  }
}
class TrangChuKH extends StatefulWidget {
  const TrangChuKH({Key? key}) : super(key: key);

  @override
  _TrangChuKHState createState() => _TrangChuKHState();

}
class _TrangChuKHState extends State<TrangChuKH> {
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
    double width1 = MediaQuery.of(context).size.width * 0.4;
    return Scaffold(
      appBar: AppBar(
        title: Text("Trang Chủ"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: anh.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // This Will Call When User Click On ListView Item
              showDialogFunc(context, anh[index], ten[index], gia[index], mota[index],);
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
                          height: 20.0,
                          child: RaisedButton(
                            color: Colors.grey,
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
                              children: <Widget>[
                                Text('Thêm vào giỏ', style: TextStyle(color: Colors.white),),
                                Icon(Icons.add_shopping_cart_sharp, color: Colors.white,),
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
                Icons.add_shopping_cart_sharp,
              ),
              iconSize: 30,
              color: Colors.grey,
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
                    MaterialPageRoute(builder: (context) => const ThongTin()),
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
showDialogFunc(context, anh, ten, gia, mota) {
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
            height: 400,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    anh,
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  ten,
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
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      gia,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
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
                    alignment: Alignment.center,
                    child: Text(
                      mota,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
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



