import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quizapp/CommpletePage.dart';
import 'package:quizapp/option.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> responseData = [];
  int number = 0;

  Future api() async {
    final response = await http.get(Uri.parse(
        'https://opentdb.com/api.php?amount=10&category=9&type=multiple'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['results'];
      setState(() {
        responseData = data;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    api();
  }

  void onOptionSelected(String selectedOption) {
    // Handle the option selection
    // You can implement logic to check if the selected option is correct, etc.
    setState(() {
      if (number < responseData.length - 1) {
        number++;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CompletedPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (responseData.isEmpty) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    // Get the current question and options
    var currentQuestion = responseData[number]['question'];
    List<String> options =
        List<String>.from(responseData[number]['incorrect_answers']);
    options.add(responseData[number]['correct_answer']);
    options.shuffle(); // To randomize the options

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
                        borderRadius: BorderRadius.circular(20)),
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
                                color: Color(0xffA42FC1))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '05',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '07',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Text(
                                "Question ${number + 1}/10",
                                style: TextStyle(
                                  color: Color(0xffA42FC1),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(currentQuestion),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 210,
                      left: 140,
                      child: CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.white,
                        child: Center(
                          child: Text(
                            "15",
                            style: TextStyle(
                              color: Color(0xffA42FC1),
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Displaying the options
            for (var option in options) ...[
              GestureDetector(
                onTap: () => onOptionSelected(option),
                child: Option(option: option),
              ),
              SizedBox(height: 15),
            ],
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffA42FC1),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5),
                onPressed: () {
                  if (number < responseData.length - 1) {
                    setState(() {
                      number++;
                    });
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CompletedPage()),
                    );
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
