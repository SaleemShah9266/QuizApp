import 'package:flutter/material.dart';
import 'package:quizapp/HomePage.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 521,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 340,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffA42FC1),
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 85,
                        backgroundColor: Colors.white.withOpacity(0.3),
                        child: CircleAvatar(
                          radius: 71,
                          child: CircleAvatar(
                            radius: 85,
                            backgroundColor: Colors.white.withOpacity(.3),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Your Score",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xffA42FC1),
                                    ),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          text: '100',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffA42FC1),
                                          ),
                                          children: [
                                        TextSpan(
                                            text: '  pts',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xffA42FC1),
                                            ))
                                      ]))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 22,
                    child: Container(
                      height: 190,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 3,
                                color: Color(0xffA42FC1).withOpacity(.7),
                                offset: Offset(0, 1))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffA42FC1),
                                              ),
                                            ),
                                            Text(
                                              '100',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                color: Color(0xffA42FC1),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text('Complection')
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffA42FC1),
                                              ),
                                            ),
                                            Text(
                                              '10',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                color: Color(0xffA42FC1),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text('Total Question')
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.green,
                                              ),
                                            ),
                                            Text(
                                              '07',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                color: Colors.green,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text('Correct')
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 15,
                                                width: 15,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              Text(
                                                '03',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  color: Colors.red,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text('Wrong')
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: CircleAvatar(
                            backgroundColor: Color(0xffA42FC1),
                            radius: 35,
                            child: Center(
                              child: Icon(
                                Icons.refresh,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Play again',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffCB9771),
                          radius: 35,
                          child: Center(
                            child: Icon(
                              Icons.visibility_rounded,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Review Answer',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff37AFA1),
                          radius: 35,
                          child: Center(
                            child: Icon(
                              Icons.share,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          ' Share Score',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffA42FC1),
                          radius: 35,
                          child: Center(
                            child: Icon(
                              Icons.file_open_rounded,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Generate PDF',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffCB9771),
                          radius: 35,
                          child: Center(
                            child: Icon(
                              Icons.home,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff37AFA1),
                          radius: 35,
                          child: Center(
                            child: Icon(
                              Icons.settings,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          ' Settings',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
