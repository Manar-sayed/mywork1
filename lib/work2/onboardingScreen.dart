import 'dart:ui';
import 'package:mywork1/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:mywork1/work2/custom_outline.dart';

class OndoardingScreen extends StatefulWidget {
  const OndoardingScreen({Key? key}) : super(key: key);

  @override
  State<OndoardingScreen> createState() => _OndoardingScreenState();
}

class _OndoardingScreenState extends State<OndoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final ScreenHight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        height: ScreenHight,
        width: ScreenWidth,
        child: Stack(
          children: [
            Positioned(
              top: ScreenHight * .1,
              left: -88,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: constants.kpinkColor.withOpacity(.5)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: ScreenHight * .3,
              right: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: constants.kGreenColor.withOpacity(.5)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: ScreenHight * .07,
                ),
                CustomOutline(
                  strokeWidth: 4,
                  width: 0.0,
                  height: 0.0,
                  child: Container(
                    width: ScreenWidth * .8,
                    height: ScreenWidth * .8,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2021/11/05/09/21/vr-6770800_640.png"))),
                  ),
                  radius: ScreenWidth * .8,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        constants.kpinkColor,
                        constants.kpinkColor.withOpacity(0),
                        constants.kGreenColor.withOpacity(.1),
                        constants.kGreenColor,
                      ],
                      stops: [
                        .2,
                        .4,
                        .6,
                        1
                      ]),
                  Padding: EdgeInsets.all(0),
                ),
                SizedBox(
                  height: ScreenHight * .09,
                ),
                const Center(
                  child: Text(
                    "  Watch movies in \n Virtual Reality",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                        color: constants.kwhiteColor),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  " Download and watch offline \n wherever you are",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    fontSize: 13,
                    color: constants.kwhiteColor.withOpacity(0.6),
                    letterSpacing: .6
                  ),
                ),
                SizedBox(height: 10),
                CustomOutline(
                  strokeWidth: 3,
                  width: 0.0,
                  height: 0.0,
                  Padding: EdgeInsets.all(3),
                  radius: 25,
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      constants.kpinkColor,
                      constants.kGreenColor,
                    ],
                  ),
                  // child: Container(
                  //
                  //   decoration:  BoxDecoration(
                  //     borderRadius: BorderRadius.circular(20),
                  //
                  //     gradient: LinearGradient(
                  //       begin: Alignment.topLeft,
                  //       end: Alignment.bottomRight,
                  //       colors: [
                  //         constants.kpinkColor.withOpacity(0.5),
                  //
                  //         constants.kGreenColor.withOpacity(0.5),
                  //       ],
                  //
                  //     ),
                  //   ),
                  //   child:Text("") ,
                  // ),
                  child: Container(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: constants.kwhiteColor, fontSize: 15),
                        )),
                    width: 160.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          constants.kpinkColor.withOpacity(0.65),
                          constants.kGreenColor.withOpacity(.65),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
