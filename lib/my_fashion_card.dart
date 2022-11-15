import 'package:flutter/material.dart';

import 'package:tasarim_fashion_app/my_functions.dart';

import 'detay.dart';

class MyFashionCard extends StatefulWidget {
  const MyFashionCard({super.key});

  @override
  State<MyFashionCard> createState() => _MyFashionCardState();
}

class _MyFashionCardState extends State<MyFashionCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      
      elevation: 10,
      borderRadius: BorderRadius.circular(15),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _myCardAppBar,
        _myCardText,
        myCardImages(context),
        myCardTicket
      ]),
    );
  }

  Widget get myCardTicket {
    return Row(
      children: [
        
        Container(
          margin: EdgeInsets.only(left: 17,bottom: 10),
            width: 140,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.brown.shade100,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text("#  Louis Vutton",style: TextStyle(color: Colors.black45,letterSpacing: 1),),alignment: Alignment.center,),
            Container(
          margin: EdgeInsets.only(left: 10,bottom: 11),
            width: 100,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.brown.shade100,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text("#  Chole",style: TextStyle(color: Colors.black45,letterSpacing: 1),),alignment: Alignment.center,),
      ],
    );
  }

  Container myCardImages(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6),
      width: double.infinity,
      height: 310,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //first image
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) =>
                          Detay(1, imgPath: "assets/modelgrid1.jpeg"))));
            },
            child: Hero(
              tag: 1,
              child: Container(
                margin: EdgeInsets.only(top: 4, right: 5, left: 5,),
                width: MediaQuery.of(context).size.width / 2,
                height: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage("assets/modelgrid1.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Column(
            children: [
              InkWell(
                onTap: (() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (cntx) => Detay(
                            2,
                            imgPath: "assets/modelgrid2.jpeg",
                          )));
                }),
                child: Hero(
                  tag: 2,
                  child: Container(
                    margin: EdgeInsets.all(3),
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/modelgrid2.jpeg"),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Detay(
                            3,
                            imgPath: "assets/modelgrid3.jpeg",
                          )));
                },
                child: Hero(
                  tag: 3,
                  child: Container(
                    margin: EdgeInsets.only(top:3,left:3,right: 3),
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/modelgrid3.jpeg"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget get _myCardAppBar {
    return ListTile(
      title: Text("Daisy"),
      subtitle: Text("34 Mins Ago"),
      trailing: PopupMenuButton(
        itemBuilder: (context) {
          return [PopupMenuItem(child: null)];
        },
      ),
      leading: Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/model1.jpeg"),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle)),
    );
  }

  Widget get _myCardText {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "deneme" * 20,
        style: TextStyle(color: Colors.grey, fontSize: 15),
      ),
    );
  }
}
