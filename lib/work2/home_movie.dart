import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'package:mywork1/constants.dart';
import 'package:mywork1/work2/movie_details.dart';

import '../widget.dart';

class home2 extends StatefulWidget {
  const home2({Key? key}) : super(key: key);

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
    List newMovies;
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        height: screenHight,
        width: screenWidth,
        child: Stack(children: [
          Positioned(
            top: screenHight * .01,
            left: -70,
            child: Container(
              height: 166,
              width: 166,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: constants.kGreenColor.withOpacity(.7)),
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
                  color: constants.kpinkColor.withOpacity(.5)),
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
          Positioned(
            bottom: -100,
            left: -100,
            child: Container(
              height: 166,
              width: 166,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: constants.kGreenColor.withOpacity(.5)),
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
          SafeArea(
            bottom: false,

              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(

                children:  [
                  const SizedBox(height: 20,),
                   Text(
                    " What would you like\n  to watch?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.redressed(fontSize: 32,color: constants.kwhiteColor,letterSpacing: 1,wordSpacing: 1.5)
                    // style:   TextStyle(
                    //     fontSize: 28,
                    //     letterSpacing: .7,
                    //     wordSpacing: 1.5,
                    //     fontWeight: FontWeight.w600,
                    //     color: constants.kwhiteColor),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: search_field(
                    ),
                  ),

                   Padding(
                    padding: EdgeInsets.only(right: 230,top: 20),
                    child: Text(
                      " new movies",
                        style: GoogleFonts.redressed(fontSize: 22,color: constants.kwhiteColor,letterSpacing: 1,wordSpacing: 1.5)

                      // style:  TextStyle(
                      //     fontSize: 17,
                      //     letterSpacing: .4,
                      //     // fontWeight: FontWeight.w400,
                      //     color: constants.kwhiteColor),
                    ),
                  ),
                  const SizedBox(height: 15,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(

                      children: [
                        InkWell(

                            child: movie_poster("assets/m.jpg"),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const movie_details()),
                          );
                        },),
                        movie_poster("assets/2.jpg"),
                        movie_poster("assets/3.jpg"),
                        movie_poster("assets/44.jpg"),
                        movie_poster("assets/1.jpg"),
                         ],
                    ),
                  ),
                ),
                   Padding(
                    padding: EdgeInsets.only(right: 200,top: 20),
                    child: Text(
                      " upcoming movies",
                        style: GoogleFonts.redressed(fontSize: 22,color: constants.kwhiteColor,letterSpacing: 1,wordSpacing: 1.5)

                      // style:  TextStyle(
                      //     fontSize: 17,
                      //     letterSpacing: .4,
                      //     // fontWeight: FontWeight.w400,
                      //     color: constants.kwhiteColor),
                    ),
                  ),
                  const SizedBox(height: 15,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(

                      children: [
                        movie_poster("assets/5.jpg"),
                        movie_poster("assets/6.jpg"),
                        movie_poster("assets/8.jpg"),
                        movie_poster("assets/7.jpg"),
                        movie_poster("assets/9.jpg"),

                      ],
                    ),
                  ),
                ),

                ],
                ),
              ),
          ),

        ],),
      ),

      floatingActionButton: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(top: 40),
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
                end: Alignment.bottomRight,
            colors: [
              constants.kpinkColor.withOpacity(0.2),
              constants.kGreenColor.withOpacity(0.2),
            ]
          )
        ),
        child: Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(4),
          decoration:  const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    constants.kpinkColor,
                    constants.kGreenColor,
                  ]
              )
          ),
          child: RawMaterialButton(
            onPressed: (){},
            shape:CircleBorder() ,
            fillColor: Color(0xff404c57),
            child: Icon(Icons.add,color: Colors.white,size: 35,),
          ),
        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,
      bottomNavigationBar: GlassmorphicContainer(
        width:screenWidth ,
        height: 70,
        borderRadius: 0,
        linearGradient:LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            constants.kwhiteColor.withOpacity(0.1),
            constants.kwhiteColor.withOpacity(0.1),
          ]
        ) ,
        border: 0,
        blur: 30,
        borderGradient:const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            constants.kpinkColor,
            constants.kGreenColor,
          ]
      ) ,
        child:BottomAppBar(
          color: Colors.transparent,
          notchMargin: 4,

          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.home_outlined,color: Colors.white,size: 26,),
              ),
              ),
              Expanded(child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.live_tv,color: Colors.white,size: 26,),
              ),
              ),
              Expanded(child: Text("")),
              Expanded(child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.folder_special_outlined,color: Colors.white,size: 26,),
              ),
              ),
              Expanded(child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.download_outlined,color: Colors.white,size: 26, ),
              ),
              ),
            ],

          ),
        ) ,
      ),
    );
  }
}
