 import 'package:flutter/material.dart';

  
void showSnackBar (BuildContext context,String title,Color color){
  ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(title),
              backgroundColor: color,
            ),
          );
 }