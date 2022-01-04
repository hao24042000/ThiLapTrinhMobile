import 'package:flutter/material.dart';
import 'package:quanlycuahangmaytinh/Screens/Trangchuquanly/TrangChuQL.dart';

class ThemSanPham extends StatelessWidget {
  const ThemSanPham({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThemSanPhamQL(),
    );
  }
}

class ThemSanPhamQL extends StatefulWidget {
  const ThemSanPhamQL({Key? key}) : super(key: key);

  @override
  _ThemSanPhamQLState createState() => _ThemSanPhamQLState();
}

class _ThemSanPhamQLState extends State<ThemSanPhamQL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Thêm Sản Phẩm"),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              //  Works in form only.
              //  We dont need focusNode or focusScope. Since we are in new version.
              TextFormField(
                decoration: InputDecoration(labelText: 'Tên Máy Tính'),
                textInputAction: TextInputAction.next, //  Moves to next field.
                keyboardType: TextInputType.name,
                onSaved: (value) {

                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Số Lượng (\cái)'),
                textInputAction: TextInputAction.next, //  Moves to next field.
                keyboardType: TextInputType.number,
                onSaved: (value) {
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Giá (\đ)'),
                textInputAction: TextInputAction.next, //  Moves to next field.
                keyboardType: TextInputType.number,
                onSaved: (value) {
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Mô tả chi tiết'),
                maxLines: 3,
                //  Since we dont need to move to next control.
                // textInputAction: TextInputAction.next,            //  Moves to next field.
                keyboardType: TextInputType.multiline,
                onSaved: (value) {
                },
              ),
              Divider(),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 8, right: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          )),
                      child: Container(
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Đường dẫn Ảnh'),
                        keyboardType: TextInputType.url,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                  ]),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: FlatButton(
                  child: Text(
                    'Xác Nhận',
                    // ignore: deprecated_member_use
                    style: Theme.of(context).primaryTextTheme.title,
                  ),
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Thông báo'),
                      content: const Text('Thêm Sảm Phẩm Mới Thành Công'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('Đồng ý'),
                        ),
                      ],
                    ),
                ),
              ),
              )
            ]
            ),
          ),
        ),
      ),
    );
  }
}

