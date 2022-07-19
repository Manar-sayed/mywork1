import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.network(
              "https://i.pinimg.com/564x/98/19/f3/9819f34e95388398d352bb82ea17e094.jpg",
              color: Colors.white.withOpacity(.9), colorBlendMode: BlendMode.modulate,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,

            ),
            Positioned(
              bottom: 170,
                left:200,
                child: Text("Forget password!\nneed a help?",style: GoogleFonts.sen(color: Colors.grey[500],fontSize: 14,),textAlign: TextAlign.center,)),

            Center(
              child: GlassmorphicContainer(
                  width: 300,
                  height: 360,
                  borderRadius: 10,
                  blur: 5,
                  alignment: Alignment.bottomCenter,
                  border: 2,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFffffff).withOpacity(0.1),
                        const Color(0xFFFFFFFF).withOpacity(0.05),
                      ],
                      stops: [
                        0.1,
                        1,
                      ]),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFFffffff).withOpacity(0.5),
                      const Color((0xFFFFFFFF)).withOpacity(0.5),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                    child: Column(
                      children: [
                        Text("Sign in",style: GoogleFonts.adamina(color: Colors.white,fontSize: 33,letterSpacing: 5),),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(

                            decoration:   InputDecoration(

                              border: UnderlineInputBorder(),
                              label:  Center(
                                child:Text("username",style: GoogleFonts.sen(color: Colors.orange[200],fontSize: 18,letterSpacing: 1),),
                              ),
                          ),


                            ),
                          ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(

                            decoration:   InputDecoration(

                              border: UnderlineInputBorder(),

                              label:  Center(
                                child: Text("password",style: GoogleFonts.sen(color: Colors.orange[200],fontSize: 18,letterSpacing: 1),),
                              ),
                          ),


                            ),
                          ),
                        Expanded(child: SizedBox(),),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text("New Account !",style: GoogleFonts.sen(color: Colors.white,fontSize: 13,),),

                            Container(
                            width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.orange[300],
                              ),

                              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,color: Colors.white,size: 30,))),

                        ],),


                      ],
                    ),
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
// body: Column(
//   children: [
//     Center(
//       child: GlassmorphicContainer(
//
//         width: 350,
//         height: 350,
//         borderRadius: 20,
//         blur: 30,
//
//         border: 6,
//
//         linearGradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Colors.teal,
//               Colors.black87.withOpacity(.3),
//             ],
//             stops: [
//               .1,
//               1,
//             ]),
//         borderGradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Colors.red.withOpacity(0.5),
//             Color((0xFFFFFFFF)).withOpacity(0.5),
//           ],
//         ),
//         child:null
//       ),
//     ),
//   ],
// )
