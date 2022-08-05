import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mywork1/constants.dart';

import 'package:hovering/hovering.dart';
import 'package:mywork1/widget.dart';
import 'package:mywork1/work2/home_movie.dart';

class movie_details extends StatefulWidget {
  const movie_details({Key? key}) : super(key: key);

  @override
  State<movie_details> createState() => _movie_detailsState();
}

class _movie_detailsState extends State<movie_details> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.black,
              Color(0xff19191b),
            ])),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: screenHeight * 0.51,
                width: screenWidth,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage("assets/m.jpg"))),
              ),
            ),
            Positioned(
              top: 45,
              right: 270,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const home2()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 3,
                              color: Colors.white70,
                            )),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white70,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 45,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 3,
                            color: Colors.white70,
                          )),
                      child: Icon(
                        Icons.menu,
                        color: Colors.white70,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 9,
              top: screenHeight * 0.42,
              child: Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(3),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Color(0xFFfe53bb),
                      Color(0xFF09fbd3),
                    ])),
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: constants.kGreyColor),
                  child: Icon(
                    Icons.play_arrow,
                    color: constants.kwhiteColor,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * .5,
              child: Container(
                height: screenHeight * .5,
                width: screenWidth,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth * .7,
                        child: Column(
                          children: [
                            SizedBox(height: 7,),
                            Text(
                              'Eternals',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                  color: constants.kwhiteColor.withOpacity(0.85)),
                            ),
SizedBox(height: 10,),
                            Text(
                              '2022.Action-Adventure-Fantasy.22h36m',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: constants.kwhiteColor.withOpacity(0.85)),
                            ),  SizedBox(height: 20,),
                            RatingBar.builder(
                              itemSize: 14,
                              initialRating: 3,
                              maxRating: 1,
                              direction: Axis.horizontal,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: constants.kYellowColor,
                              ),
                              itemPadding: EdgeInsets.symmetric(horizontal: 1),
                              onRatingUpdate: (rating) {
                                debugPrint(rating.toString());
                              },
                              unratedColor: constants.kwhiteColor,
                            ),
                            SizedBox(height: 20,),
                            const Text(
                                "The saga of the Enternals, a race of"
                                    " \nimmortal beings who lived on Earth"
                                    " \nshaped its history  "
                                    ,
                            textAlign: TextAlign.center,
                            maxLines:3,
                            style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                        height: 2,
                        width: screenWidth*.8,
                        color: constants.kwhiteColor.withOpacity(0.15),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 23),
                        child:Column(
                          children: [
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text(
                                    "Casts",
                                    style: GoogleFonts.redressed(fontSize: 22,color: constants.kwhiteColor,letterSpacing: 1,)


                                ),
                              ],
                            ),
                            SizedBox(height: 7,),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children:  [
           actorPhoto("https://i.pinimg.com/originals/02/87/38/02873880364d039c6f51c6b82c64aa9e.jpg"),
           actorPhoto("https://www.pinkvilla.com/files/ma_dong_seok_main.jpg"),
           actorPhoto("https://www.thewrap.com/wp-content/uploads/2021/11/eternals-richard-madden.jpg"),
                              ],

                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children:  [
                                  actorPhoto("https://pbs.twimg.com/media/ECwNRwHU4AElDZm.jpg"),
                                  actorPhoto("https://static0.srcdn.com/wordpress/wp-content/uploads/2019/09/Dan-Stevens-Eternals-SR.jpg"),
                                ],

                              ),
                            ),
                          ],
                        ) ,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
