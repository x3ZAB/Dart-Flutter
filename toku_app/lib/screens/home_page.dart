import 'package:flutter/material.dart';
import 'package:toku_app/screens/Family_members_page.dart';
import 'package:toku_app/screens/Phrases.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          'Toku',
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
      body: Column(
        children: [
          category(
            text: 'Number',
            color: Color(0xffEF9235),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ),
              );
            },
          ),
          category(
            text: 'Family Members',
            color: Color(0xff558B37),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyMembersPage();
                  },
                ),
              );
            },
          ),
          category(
            text: 'Colors',
            color: Color(0xff79359F),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return colorssPage();
                  },
                ),
              );
            },
          ),
          category(
            text: 'Phrases',
            color: Color(0xff50Adc7),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return phrases();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class category extends StatelessWidget {
  category({this.text, this.color, this.ontap});

  String? text;
  Color? color;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(left: 23),
        alignment: Alignment.centerLeft,
        height: 88,
        width: double.infinity,
        color: color,
        child: Text(text!, style: TextStyle(color: Colors.white, fontSize: 19)),
      ),
    );
  }
}
