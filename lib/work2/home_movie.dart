import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'package:mywork1/constants.dart';

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
                        movie_poster("https://m.media-amazon.com/images/I/715iomL0vLL._AC_SL1334_.jpg"),
                        movie_poster("https://s3.crackedcdn.com/phpimages/quickfix/8/4/7/261847.jpg?v=1"),
                        movie_poster("https://i.pinimg.com/736x/b3/b2/4b/b3b24b14133b71dcb0daa5d32234c287.jpg"),
                        movie_poster("https://www.indiewire.com/wp-content/uploads/2019/12/us-1.jpg?w=758"),
                        movie_poster("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbfKD7yh4oxO5C3Osq4Ik_Ghp3fxehM2A2g0N4tB8dLrSDGHlesGq0YFbp5ztGf9O6KD4&usqp=CAU"),
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
                        movie_poster("https://graphicdesignjunction.com/wp-content/uploads/2016/01/001-movie-poster.jpg"),
                        movie_poster("https://photos.hancinema.net/photos/fullsizephoto1343300.jpg"),
                        movie_poster("https://photos.hancinema.net/photos/fullsizephoto1264294.jpg"),
                        movie_poster("https://popcornusa.s3.amazonaws.com/movies/650/10044-38759-Jurassicjpg"),
                        movie_poster("https://photos.hancinema.net/photos/largephoto1483671.jpg"),
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
