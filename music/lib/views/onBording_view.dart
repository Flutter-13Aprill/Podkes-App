import 'package:flutter/material.dart';
import 'package:music/controllers/onbording_controller.dart';
import 'package:music/widgets/circleDot_widget.dart';
import 'package:music/widgets/mainButton_widget.dart';

class OnbordingView extends StatefulWidget {
  const OnbordingView({super.key});

  @override
  State<OnbordingView> createState() => _ControllerOnboardingPageState();
}

class _ControllerOnboardingPageState extends State<OnbordingView> {
  OnbordingController controller = OnbordingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff201D2B),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 400,
                height: 600,
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      controller.currentPage = value;
                    });
                  },
                  controller: controller.moveTo,

                  children: controller.onBordingList,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleDot(isActive: controller.currentPage == 0),
                  SizedBox(width: 8),
                  CircleDot(isActive: controller.currentPage == 1),
                  SizedBox(width: 8),
                  CircleDot(isActive: controller.currentPage == 2),
                ],
              ),
              MainButton(
                yourLogic: () {
                  setState(() {
                    controller.clickedButton(context);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
