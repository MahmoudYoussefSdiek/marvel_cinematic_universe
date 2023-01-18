import 'package:flutter/material.dart';

Widget defaultButton(BuildContext context, String text, String navigator) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 2, 15, 2),
    child: SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, navigator);
        },
        style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.redAccent),
        ),
        child: Text(text),
      ),
    ),
  );
}
