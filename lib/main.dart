import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasarim_fashion_app/my_fashion_card.dart';
import 'package:tasarim_fashion_app/my_functions.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController tabBarController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabBarController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        bottomNavigationBar: Material(
            elevation: 2,
            color: Colors.white,
            child: TabBar(controller: tabBarController, tabs: [
              Tab(icon: Icon(Icons.more, color: Colors.grey)),
              Tab(icon: Icon(Icons.play_arrow_rounded, color: Colors.grey)),
              Tab(icon: Icon(Icons.navigation_rounded, color: Colors.grey)),
              Tab(icon: Icon(Icons.supervised_user_circle, color: Colors.grey)),
            ])),
        appBar: _appbarStyle as PreferredSizeWidget,
        body:  SingleChildScrollView(child: AnaSayfa()),
      ),
    );
  }

  Widget get _appbarStyle {
    return AppBar(
        titleSpacing: 15,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt, color: Colors.grey, size: 30))
        ],
        title: _appbarTextStyle,
        backgroundColor: Colors.transparent,
        elevation: 0);
  }

  Widget get _appbarTextStyle {
    return Text('Fashion App UI',
        style: GoogleFonts.greatVibes(
            fontSize: 30,
            textStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)));
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 150, child: MyFunctions.appbarAndImages),
        MyFashionCard()
      ],
    );
  }
}
