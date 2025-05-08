import 'package:flutter/material.dart';
import 'package:music/models/category_model.dart';

Widget categoryWidget(CategoryModel category) {
  return Container(
    margin: EdgeInsets.only(right: 12),
    
    decoration: BoxDecoration(
      
      borderRadius: BorderRadius.circular(36),
      color: Color.fromRGBO(47, 49, 66, 1),
    ),
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 13),
    height: 36,
    
    child: Text(
      category.name,
      style: TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.bold),
    ),
  );
}
