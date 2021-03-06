import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/widgets/buttons.dart';
import 'package:flutter_payment_app/widgets/large_buttons.dart';
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
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
            _payButton(),
            _textContainer(),
          ],
        ),
      ),
    );
  }

  _payButton() {
    return Positioned(
      bottom: 20,
      child: AppLargeButton(
        text: "Pay all bills",
        textColor: Colors.white,
        backgroundColor: AppColor.mainColor,
      ),
    );
  }

  _headSection() {
    return Container(
      height: 310,
      child: Stack(children: [
        _mainBackground(),
        _curveImageContainer(),
        _buttonContainer(),
      ]),
    );
  }

  _textContainer() {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 110,
          child: Text(
            "My Bills",
            style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
              color: Color(0xFF293952),
            ),
          ),
        ),
        Positioned(
          left: 40,
          top: 80,
          child: Text(
            "My Bills",
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        )
      ],
    );
  }

  _buttonContainer() {
    return Positioned(
      bottom: 10,
      right: 50,
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet<dynamic>(
            context: context,
            isScrollControlled: true,
            barrierColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            builder: (BuildContext bc) {
              return Container(
                height: MediaQuery.of(context).size.height - 240,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        color: Color(0xFFEEF1F4).withOpacity(0.7),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height - 300,
                      ),
                    ),
                    Positioned(
                      right: 50,
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        width: 60,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29),
                          color: AppColor.mainColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppButtons(
                              icon: Icons.cancel,
                              iconColor: AppColor.mainColor,
                              textColor: Colors.white,
                              backgroundColor: Colors.white,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            AppButtons(
                              icon: Icons.add,
                              iconColor: AppColor.mainColor,
                              textColor: Colors.white,
                              backgroundColor: Colors.white,
                              onTap: () {
                                Navigator.pop(context);
                              },
                              text: "Add Bills",
                            ),
                            AppButtons(
                              icon: Icons.history,
                              iconColor: AppColor.mainColor,
                              textColor: Colors.white,
                              backgroundColor: Colors.white,
                              onTap: () {
                                Navigator.pop(context);
                              },
                              text: "History",
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
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
