import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mywork1/constants.dart';

Widget search_field (){
  return Container(
    height: 36,
    decoration: BoxDecoration(
      color: constants.kGreyColor.withOpacity(0.2),
      borderRadius: BorderRadius.circular(15),
    ),

    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,),
      child: Row(
        children: [
         Icon(Icons.search,color: constants.kGreyColor,),
          const SizedBox(
            width: 8,
          ),
          Expanded(child: TextField(
            style:TextStyle(
              color: constants.kwhiteColor.withOpacity(.6),
              fontSize: 17,
              letterSpacing: .3,
            ) ,
            decoration: InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              hintStyle:GoogleFonts.redressed(fontSize: 17,color: constants.kwhiteColor.withOpacity(.5),letterSpacing: 1,wordSpacing: 1.5)

          ),
          ),),
          const SizedBox(
            width: 8,
          ),
          Icon(Icons.mic,color: constants.kGreyColor,),
          const SizedBox(
            width: 10,
          ),

        ],
      ),
    ),
    
  );
}
Widget movie_poster(String img){
  return   Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5,),
    child: Container(
      // child: Image(image: NetworkImage("https://img.fruugo.com/product/4/10/14637104_max.jpg")),

      width: 130,
      height: 190,
      transform: Matrix4.rotationZ(0.07),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.fill
          ),

          borderRadius: BorderRadius.circular(16),
          // borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomLeft: Radius.circular(25)
          // ),
      ),
    ),
  );
}
Widget actorPhoto(String img){
  return CircleAvatar(
    backgroundColor: constants.kwhiteColor,
    maxRadius: 34,
    minRadius:14 ,
    backgroundImage: NetworkImage(img),
  );
}