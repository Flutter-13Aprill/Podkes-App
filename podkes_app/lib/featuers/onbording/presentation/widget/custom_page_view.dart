import 'package:flutter/material.dart';
import 'package:podkes_app/core/text/text_styles.dart';
import 'package:podkes_app/core/widget/custom_button.dart';
import 'package:podkes_app/featuers/onbording/data/model/onbording_model.dart';
import 'package:podkes_app/featuers/onbording/presentation/onborder_controller.dart';
import 'package:podkes_app/featuers/onbording/presentation/widget/custom_smooth_indecator.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  OnborderController onborderController = OnborderController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: onborderController.controller,
      itemCount: onbordingData.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 40, width: 40),
              Image.asset(onbordingData[index].image),
              SizedBox(height: 20, width: 20),
              Text(onbordingData[index].title, style: TextStyles.poppins700),
              SizedBox(height: 20, width: 20),

              Text(onbordingData[index].subTitle!, style: TextStyles.inter400),
              SizedBox(height: 40, width: 40),
              CustomSmoothIndecator(controller: onborderController.controller),
              SizedBox(height: 30, width: 30),
              SizedBox(
                child: CustomButton(
                  press: () {
                    onborderController.checkNavigation(context, index);
                  },
                  child: Icon(Icons.arrow_forward),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
