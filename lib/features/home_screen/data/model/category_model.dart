import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CategoryModel {
  final String text;
  final int value;
  final IconData icon;

  CategoryModel({required this.text, required this.value, required this.icon});
}

List<CategoryModel> categoriesList = [
  CategoryModel(text: 'PMS', value: 16, icon: MaterialIcons.engineering,),
  CategoryModel(text: 'PDI', value: 8, icon: Feather.search,),
  CategoryModel(text: 'PDN', value: 17, icon: Feather.circle,),
  CategoryModel(text: 'FFA', value: 9, icon: Feather.book,),
  CategoryModel(text: 'CCV', value: 2, icon: Feather.camera_off,),
  CategoryModel(text: 'PRA', value: 5, icon: Feather.settings,),
  CategoryModel(text: 'POO', value: 6, icon: Feather.radio,),
];