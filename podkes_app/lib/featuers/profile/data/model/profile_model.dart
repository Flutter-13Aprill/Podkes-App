import 'package:flutter/material.dart';

class ProfileModel {
  final Icon icon;
  final Color colorContainer;
  final String title;

  ProfileModel({
    required this.icon,
    required this.title,
    required this.colorContainer,
  });
}

List<ProfileModel> containerData = [
  ProfileModel(
    icon: Icon(Icons.arrow_forward),
    title: "Change Theme",
    colorContainer: Color.fromRGBO(255, 191, 71, 1),
  ),
  ProfileModel(
    icon: Icon(Icons.system_update_alt),
    title: "Privacy",
    colorContainer: Color.fromRGBO(181, 72, 198, 1),
  ),
  ProfileModel(
    icon: Icon(Icons.info_outline),
    title: "About",
    colorContainer: Color.fromRGBO(50, 167, 226, 1),
  ),
  ProfileModel(
    icon: Icon(Icons.logout),
    title: "Logout",
    colorContainer: Color.fromRGBO(236, 79, 60, 1),
  ),
];
