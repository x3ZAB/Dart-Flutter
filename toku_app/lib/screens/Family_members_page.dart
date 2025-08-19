import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyMembersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text(
          'Family Members',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          family_catgory(
            NameImage: 'assets/images/Familymembers/family_father.png',
            EnName: 'Father',
            JpName: 'chicioya',
            Audio: 'images/Familymembers/sounds/father.wav',
          ),
          family_catgory(
            NameImage: 'assets/images/Familymembers/family_daughter.png',
            EnName: 'daughter',
            JpName: 'Musume',
            Audio: 'images/Familymembers/sounds/daughter.wav',
          ),
          family_catgory(
            NameImage: 'assets/images/Familymembers/family_grandfather.png',
            EnName: 'Grand Father',
            JpName: 'Sofu',
            Audio: 'images/Familymembers/sounds/grand father.wav',
          ),
          family_catgory(
            NameImage: 'assets/images/Familymembers/family_grandmother.png',
            EnName: 'Grand Mother',
            JpName: 'Sobo',
            Audio: 'images/Familymembers/sounds/grand mother.wav',
          ),
          family_catgory(
            NameImage: 'assets/images/Familymembers/family_mother.png',
            EnName: 'Mother',
            JpName: 'Hahaoya',
            Audio: 'images/Familymembers/sounds/mother.wav',
          ),
          family_catgory(
            NameImage: 'assets/images/Familymembers/family_older_brother.png',
            EnName: 'older brother',
            JpName: 'Ani',
            Audio: 'images/Familymembers/sounds/older bother.wav',
          ),
          family_catgory(
            NameImage: 'assets/images/Familymembers/family_older_sister.png',
            EnName: 'older sister',
            JpName: 'Ane',
            Audio: 'images/Familymembers/sounds/older sister.wav',
          ),
          family_catgory(
            NameImage: 'assets/images/Familymembers/family_son.png',
            EnName: 'son',
            JpName: 'Musuko',
            Audio: 'images/Familymembers/sounds/son.wav',
          ),
          family_catgory(
            NameImage: 'assets/images/Familymembers/family_younger_brother.png',
            EnName: 'younger brother',
            JpName: 'Otōto',
            Audio: 'images/Familymembers/sounds/younger brohter.wav',
          ),
          family_catgory(
            NameImage: 'assets/images/Familymembers/family_younger_sister.png',
            EnName: 'younger sister',
            JpName: 'Imōto',
            Audio: 'images/Familymembers/sounds/younger sister.wav',
          ),
        ],
      ),
    );
  }
}

class family_catgory extends StatefulWidget {
  family_catgory({
    this.EnName,
    required this.NameImage,
    this.JpName,
    this.Audio,
  });

  String? JpName;
  String? EnName;
  String? NameImage;
  String? Audio;

  @override
  State<family_catgory> createState() => _family_catgoryState();
}

class _family_catgoryState extends State<family_catgory> {
  late AudioPlayer player = AudioPlayer();
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff558B37),
      height: 89,
      child: Row(
        children: [
          Container(
            color: Color(0xfffff6dc),
            child: Image.asset('${widget.NameImage}'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${widget.JpName}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  '${widget.EnName}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () async {
              await player.play(AssetSource('${widget.Audio}'));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white, size: 31),
          ),
        ],
      ),
    );
  }
}
