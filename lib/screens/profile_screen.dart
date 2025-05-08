import 'package:flutter/material.dart';

// - Screens
import 'package:podkes/screens/onboarding_screen.dart';

// -- External Package
import 'package:flutter_svg/flutter_svg.dart';

// -- Extension
import 'package:podkes/extensions/screen_size.dart';
import 'package:podkes/widgets/profile_widgets/profile_option_widget.dart';
import 'package:shimmer/shimmer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  /// This variable is used to simulate the loading state of the component.
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Profile', style: Theme.of(context).textTheme.titleMedium,),
      ),

      body: Container(

        margin: EdgeInsets.symmetric(horizontal: 32),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 42),
      
            Builder(
              builder: (context) {

                /// Simulates the loading state of the component.
                if (isLoading) {
                  Future.delayed(Duration(seconds: 1), () {
                    setState(() {
                      isLoading = false;
                    });
                  });
      
                  return Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.blueGrey,
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.white,
                      ),
                    ),
                  );
                } // End of if statement
      
                return Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xff252836),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Image.asset('assets/profile_screen/profile_screen_images/image 1.png',),
                );
              },
            ),
      
            SizedBox(height: 24),
      
            Text('Change Profile',style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 20,fontWeight: FontWeight.w400),
            ),
      
            SizedBox(height: 40),
      
            Container(
              width: context.getWidth() * 0.9,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff252836),
              ),
              child: Column(

                children: [

                  ProfileOptionWidget(svgPath: 'assets/profile_screen/profile_screen_svgs/Group 112.svg', optionLabel: 'Change Theme'),

                  ProfileOptionWidget(svgPath: 'assets/profile_screen/profile_screen_svgs/Group 113.svg' , optionLabel: 'Privacy',),

                  ProfileOptionWidget(svgPath: 'assets/profile_screen/profile_screen_svgs/Group 112 (1).svg', optionLabel: 'About'),
      
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Color(0xff252836),
                            title: Container(
                              alignment: Alignment.center,
                              width: context.getWidth() * 0.6,
                              height: context.getHeight() * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                              ),
                              child: Text('See You later',style:Theme.of(context).textTheme.titleMedium,),
                            ),
                          );
                        },
                      );
      
                      if(context.mounted){
                        Future.delayed(Duration(seconds: 1),(){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => OnboardingScreen()), (Route<dynamic> route) => false);
                        });
                      }
                    },

                    style: TextButton.styleFrom(padding: EdgeInsets.zero, splashFactory: NoSplash.splashFactory,),
                    child: ListTile(
                      leading: SvgPicture.asset('assets/profile_screen/profile_screen_svgs/Group 113 (1).svg',),
                      title: Text('Logout',style: Theme.of(context).textTheme.labelSmall,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}