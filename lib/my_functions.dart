import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFunctions {
  static Widget get appbarAndImages {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            photoFollowSection(
                buyukResim: "assets/model1.jpeg",
                kucukResim: "assets/chanellogo.jpg"),
            photoFollowSection(
                buyukResim: "assets/model2.jpeg",
                kucukResim: "assets/chloelogo.png"),
            photoFollowSection(
                buyukResim: "assets/model3.jpeg",
                kucukResim: "assets/chanellogo.jpg"),
            photoFollowSection(
                buyukResim: "assets/model2.jpeg",
                kucukResim: "assets/chloelogo.png"),
            photoFollowSection(
                buyukResim: "assets/model3.jpeg",
                kucukResim: "assets/chanellogo.jpg"),
            photoFollowSection(
                buyukResim: "assets/model1.jpeg",
                kucukResim: "assets/chloelogo.png"),
          ],
        )
      ],
    );
  }

  static Widget photoFollowSection(
      {required String buyukResim, required String kucukResim}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            resimOlustur(buyukResim),
            altResimOlustur(kucukResim),
          ],
        ),
        followButtonOlustur()
      ],
    );
  }

  static Widget resimOlustur(String resimYolu) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          image: DecorationImage(
            image: AssetImage(
              resimYolu,
            ),
            fit: BoxFit.cover,
          )),
    );
  }

  static Widget altResimOlustur(String resimYolu) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage(resimYolu),
          )),
    );
  }

  static Widget followButtonOlustur() {
    return Container(
      margin: EdgeInsets.only(left: 8, top: 5),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown.shade400,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {},
          child: Text("Follow", style: GoogleFonts.prata(fontSize: 20))),
    );
  }
}
