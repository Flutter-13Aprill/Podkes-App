import 'package:flutter/material.dart';


// - External Package
import 'package:flutter_svg/svg.dart';

class ProfileOptionWidget extends StatelessWidget {

  /// [ProfileOptionWidget] displays an individual option in the user profile section.
  ///
  /// It takes the following parameters:
  /// - [svgPath]: The path to the SVG image representing the option's icon.
  /// - [optionLabel]: The label text for the profile option.
  const ProfileOptionWidget({super.key, required this.svgPath, required this.optionLabel});

  final String svgPath;
  final String optionLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        ListTile(
          leading: SvgPicture.asset(svgPath),
          title: Text(optionLabel,style: Theme.of(context).textTheme.labelSmall,),
        ),
        
        Divider(thickness: 1, color: Color(0xff323542)),
      ],
    );
  }
}