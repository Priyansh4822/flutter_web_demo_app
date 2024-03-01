import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: MobileNavbar,
      desktop: DesktopNavbar,
    );
  }

  Widget MobileNavbar(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo()
        ],
      ),
    );
  }

  Widget DesktopNavbar(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Feautures'),
              navButton('About Us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: (){},
              child: Text('Request a Demo',
              style: TextStyle(color: AppColors.primary),)),
          )
        ]
      ),
    );
  }


  Widget navLogo(){
    return Container(
      width: 100,
      // height: 50,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/logo.png'),
        )
      ),
    );
  }

  Widget navButton(String text){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: (){},
        child: Text(text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,

        ),),),
    );
  }
}