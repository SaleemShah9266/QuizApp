import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  String option;

  Option({Key? key, required this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48,
          width: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 3, color: Color(0xffA42FC1)),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    option,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Radio(value: option, groupValue: 2, onChanged: (value){})
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
