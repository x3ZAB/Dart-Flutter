import 'package:flutter/material.dart';
import 'package:toku_app/helper/appassets.dart';
import 'package:audioplayers/audioplayers.dart';

class NumbersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text(
          'Numbers',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),

      body: ListView(
        children: [
          num_catgory(
            EnName: 'one',
            JpName: 'ichi',
            NameImage: AppAssets.one,
            Audio: 'images/numbers/sounds/number_one_sound.mp3',
          ),
          num_catgory(
            EnName: 'two',
            JpName: 'Ni',
            NameImage: AppAssets.two,
            Audio: 'images/numbers/sounds/number_two_sound.mp3',
          ),
          num_catgory(
            EnName: 'three',
            JpName: 'Mittsu',
            NameImage: AppAssets.three,
            Audio: 'images/numbers/sounds/number_three_sound.mp3',
          ),
          num_catgory(
            EnName: 'four',
            JpName: 'shi',
            NameImage: AppAssets.four,
            Audio: 'images/numbers/sounds/number_four_sound.mp3',
          ),
          num_catgory(
            EnName: 'five',
            JpName: 'Go',
            NameImage: AppAssets.five,
            Audio: 'images/numbers/sounds/number_five_sound.mp3',
          ),
          num_catgory(
            EnName: 'six',
            JpName: 'Roku',
            NameImage: AppAssets.six,
            Audio: 'images/numbers/sounds/number_six_sound.mp3',
          ),
          num_catgory(
            EnName: 'Seven',
            JpName: 'Sebun',
            NameImage: AppAssets.seven,
            Audio: 'images/numbers/sounds/number_seven_sound.mp3',
          ),
          num_catgory(
            EnName: 'eight',
            JpName: 'Hachi',
            NameImage: AppAssets.eight,
            Audio: 'images/numbers/sounds/number_eight_sound.mp3',
          ),
          num_catgory(
            EnName: 'nine',
            JpName: 'Kyū',
            NameImage: AppAssets.nine,
            Audio: 'images/numbers/sounds/number_nine_sound.mp3',
          ),
          num_catgory(
            EnName: 'ten',
            JpName: 'jū',
            NameImage: AppAssets.ten,
            Audio: 'images/numbers/sounds/number_ten_sound.mp3',
          ),
        ],
      ),
    );
  }
}

class num_catgory extends StatefulWidget {
  num_catgory({this.EnName, required this.NameImage, this.JpName, this.Audio});

  String? JpName;
  String? EnName;
  String? NameImage;
  String? Audio;

  @override
  State<num_catgory> createState() => _num_catgoryState();
}

class _num_catgoryState extends State<num_catgory> {
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
      color: Color(0xffef9235),
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
