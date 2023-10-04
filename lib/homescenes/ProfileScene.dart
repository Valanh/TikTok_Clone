import 'package:flutter/material.dart';

class ProFileScene extends StatefulWidget {
  const ProFileScene({super.key});

  @override
  State<ProFileScene> createState() => _ProFileSceneState();
}

class _ProFileSceneState extends State<ProFileScene> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 5, bottom: 10),
          child: Column(
            children: [
              //thanh menu
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.pink,
                        )),
                    //Tên người dùng
                    Text(
                      "Tên người dùng",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.logout,
                          color: Colors.pink,
                        )),
                  ],
                ),
              ),
              // Hình ảnh hồ sơ
              Container(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                    ),
                    Positioned(
                        bottom: -10,
                        right: -10,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.upload,
                              color: Colors.pink,
                            )))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //thông tin Email
              Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              //follow
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //đang follow
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      child: Column(
                        children: [
                          Text(
                            "1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ), //số lượng
                          Text(
                            "Đang Follow",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //Follower
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      child: Column(
                        children: [
                          Text(
                            "1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ), //số lượng
                          Text(
                            "Follower",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //bottom edit
              Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Sửa hồ sơ
                    Container(
                      height: 35,
                      child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.grey)),
                          child: Text(
                            "Sửa Hồ Sơ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                    ),
                    SizedBox(width: 10,),
                    //Sửa hồ sơ
                    Container(
                      height: 35,
                      child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.grey)),
                          child: Text(
                            "Sửa Mật Khẩu",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                    ),
                  ],
                ),
              ),
              //Tab view
              Container(
              )
            ],
          ),
        )
      ],
    );
  }
}
