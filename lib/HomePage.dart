import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: 421,
              width: 400,
              child: Stack(
                children: [
                  Container(
                    height: 240,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Color(0xffA42FC1),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 20,
                   child: Container(
                    height: 170,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 5,
                          spreadRadius: 3,
                          color: Color(0xffA42FC1)
                        )
                      ]
                    ),
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('05', style: TextStyle(
                              color: Colors.green, fontSize: 20,
                            
                            ),),

                            Text('07', style: TextStyle(
                              color: Colors.red, fontSize: 20,
                            
                            ),),
                          ],
                        ),
                        
                      ],
                    ),
                    ),
                   )
                  )
                ],
              ),

            ),
          ],
        ),

      ),
    );
  }
}