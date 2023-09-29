import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'MainSceene.dart';

class LoginWidthEmail extends StatefulWidget {
  const LoginWidthEmail({Key? key}):super(key: key);

  @override
  State<LoginWidthEmail> createState() => _LoginWidthEmailState();
}

class _LoginWidthEmailState extends State<LoginWidthEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //tiêu đề
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Text(
                "Log in to TopTop",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            //nhập tk
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
            //nhập pass
            Container(
              width: 300,
              margin: EdgeInsets.only(bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
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
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const MainSceene()));
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
    );
  }
}

