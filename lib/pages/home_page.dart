import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/widgets/text_size.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: height,
        child: Stack(children: [_headSection(), _listBills()]),
      ),
    );
  }

  _headSection() {
    return Container(
      height: 310,
      child: Stack(children: [
        _mainBackground(),
        _curveImageContainer(),
        _buttonContainer()
      ]),
    );
  }

  _buttonContainer() {
    return Positioned(
      bottom: 10,
      right: 50,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/lines.png"),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: Offset(0, 1),
              color: Color(0xFF11324d).withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }

  _mainBackground() {
    return Positioned(
      bottom: 10,
      left: 0,
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.fitHeight),
        ),
      ),
    );
  }

  _curveImageContainer() {
    return Positioned(
      left: 0,
      right: -2,
      bottom: 10,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/curve.png"), fit: BoxFit.cover),
        ),
      ),
    );
  }

  _listBills() {
    return Positioned(
      top: 320,
      child: Container(
        height: 130,
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFd8dbe0),
              offset: Offset(1, 1),
              blurRadius: 20,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 18, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 3, color: Colors.grey),
                          image: DecorationImage(
                              image: AssetImage("images/brand1.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "KenGen Power",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColor.mainColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "ID:903123",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColor.idColor,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedText(
                    text: "Auto pay on 24th May 18",
                    color: AppColor.green,
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColor.selectBackground,
                        ),
                        child: Center(
                          child: Text(
                            "Select",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColor.selectColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "\$1248.00",
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColor.mainColor,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "Due in 3 days",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.idColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 5,
                    height: 45,
                    decoration: BoxDecoration(
                      color: AppColor.halfOval,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
