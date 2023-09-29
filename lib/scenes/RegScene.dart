import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MainSceene.dart';

class RegScene extends StatefulWidget {
  const RegScene({Key? key}) : super(key: key);

  @override
  State<RegScene> createState() => _RegSceneState();
}

class _RegSceneState extends State<RegScene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Positioned(
                left: 0,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
              ),
            ),
            Center(
              child: Column(
                children: [
                  //tiêu đề
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: Text(
                      "Sign in for TopTop",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  //nhập Fullname
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Full name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),
                  //nhập Email
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Emial",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),

                  //nhập Phone number
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Phone number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),
                  //nhập pass
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),

                  //confirm pass
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(bottom: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  //button login
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
