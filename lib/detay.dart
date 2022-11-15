import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  String? imgPath;
  int? tag;
  Detay(this.tag, {this.imgPath});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.tag!,
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(widget.imgPath!),
            ),
          ),
        ),
      ]),
    );
  }
}
