import 'package:flutter/material.dart';

Widget detailsItemList(String title, String value) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsetsDirectional.fromSTEB(8, 4, 4, 8),
    padding: const EdgeInsetsDirectional.fromSTEB(10, 7, 7, 8),
    decoration: BoxDecoration(
      color: Colors.redAccent,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text(
      '$title : $value',
      style: const TextStyle(color: Colors.white),
    ),
  );
}
