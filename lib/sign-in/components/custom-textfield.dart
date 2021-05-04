import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  const CustomTextField({this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 5),
            Text(
              text,
              style: TextStyle(
                backgroundColor: Colors.transparent,
                fontSize: 12,
                height: 0.8,
              ),
            ),
          ],
        ),
        Container(
          height: 50,
          child: Material(
            elevation: 1,
            borderRadius: BorderRadius.circular(5),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Colors.blue[300],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
