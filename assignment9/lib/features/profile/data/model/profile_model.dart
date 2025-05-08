import 'package:assignment9/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class ProfileModel {
  final Icon icon;
  final Color color;
  final String title;

  ProfileModel({required this.icon, required this.title, required this.color});
}

List<ProfileModel> profileData = [
  ProfileModel(
    icon: Icon(Icons.arrow_forward),
    title: 'Change Theme',
    color: AppPalette.yalowColor,
  ),
  ProfileModel(
    icon: Icon(Icons.system_update_alt),
    title: 'Privacy',
    color: AppPalette.purpleColor,
  ),
  ProfileModel(
    icon: Icon(Icons.info_outline_rounded),
    title: 'About',
    color: AppPalette.blueColor,
  ),
  ProfileModel(
    icon: Icon(Icons.logout_rounded),
    title: 'Logout',
    color: AppPalette.redColor,
  ),
];
