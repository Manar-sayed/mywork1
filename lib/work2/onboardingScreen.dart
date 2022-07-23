import 'dart:ui';
import 'package:mywork1/constants.dart';
import 'package:flutter/material.dart';


import 'package:mywork1/work2/custom_outline.dart';
import 'package:mywork1/work2/home_movie.dart';

class OndoardingScreen extends StatefulWidget {
  const OndoardingScreen({Key? key}) : super(key: key);

  @override
  State<OndoardingScreen> createState() => _OndoardingScreenState();
}

class _OndoardingScreenState extends State<OndoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        height: screenHight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              top: screenHight * .1,
              left: -88,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: constants.kpinkColor.withOpacity(.6)),
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
              top: screenHight * .3,
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
                child: Center(
                  child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  SizedBox(
                    height: screenHight * .1,
                  ),
                  CustomOutline(
                    strokeWidth: 4,
                    width: 0.0,
                    height: 0.0,
                    child: Container(
                      width: screenWidth * .8,
                      height: screenWidth * .8,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2021/11/05/09/21/vr-6770800_640.png"))),
                    ),
                    radius: screenWidth * .8,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          constants.kpinkColor,
                          constants.kpinkColor.withOpacity(0),
                          constants.kGreenColor.withOpacity(.1),
                          constants.kGreenColor,
                        ],
                        stops: const [
                          .2,
                          .4,
                          .6,
                          1
                        ]),
                    Padding: const EdgeInsets.all(0),
                  ),
                  SizedBox(
                    height: screenHight * .07,
                  ),
                  const Text(
                    "  Watch movies in \n Virtual Reality",
                    textAlign: TextAlign.center,
                    style:  TextStyle(
                        fontSize: 35,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                        color: constants.kwhiteColor),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    " Download and watch offline \n wherever you are",
                    textAlign: TextAlign.center,
                    style: TextStyle(

                      fontSize: 13,
                      color: constants.kwhiteColor.withOpacity(0.6),
                      letterSpacing: .6
                    ),
                  ),
                  SizedBox(
                    height: screenHight * .07,
                  ),
                  CustomOutline(
                    strokeWidth: 3,
                    width: 0.0,
                    height: 0.0,
                    Padding: const EdgeInsets.all(3),
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const home2()),
                            );
                          },
                          child: const Text(
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
                const Spacer(),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children:
                  List.generate(3, (index) {
                    return Container(
                      height: 7,
                      width: 7,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index==0?constants.kGreenColor:constants.kwhiteColor.withOpacity(0.2)
                      ),
                    );
                  },
                  )
                ,),
                SizedBox(height: 20,)
              ],
            ),
                ))
          ],
        ),
      ),
    );
  }
}
