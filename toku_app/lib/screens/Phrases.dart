import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class phrases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text(
          'phrases',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          phrases_catgory(
            JpName: 'Ogenki desu ka',
            EnName: 'How are you?',
            Audio: 'images/phreses/how_are_you_feeling.wav',
          ),
          phrases_catgory(
            JpName: 'Kimasu ka',
            EnName: 'Are you coming?',
            Audio: 'images/phreses/are_you_coming.wav',
          ),
          phrases_catgory(
            JpName: 'Kōdoku o o wasurenaku',
            EnName: 'Don\'t forget to subscribe',
            Audio: 'images/phreses/dont_forget_to_subscribe.wav',
          ),
          phrases_catgory(
            JpName: 'Watashi wa anime ga daisukidesu',
            EnName: 'I love anime',
            Audio: 'images/phreses/i_love_anime.wav',
          ),
          phrases_catgory(
            JpName: 'Watashi wa puroguramingu ga daisukidesu',
            EnName: 'I love programming',
            Audio: 'images/phreses/i_love_programming.wav',
          ),
          phrases_catgory(
            JpName: 'Puroguramingu wa kantandesu',
            EnName: 'Programming is easy',
            Audio: 'images/phreses/programming_is_easy.wav',
          ),
          phrases_catgory(
            JpName: 'Anata no namae wa nandesuka',
            EnName: 'What is your name?',
            Audio: 'images/phreses/what_is_your_name.wav',
          ),
          phrases_catgory(
            JpName: 'Doko ni iku no',
            EnName: 'Where are you going?',
            Audio: 'images/phreses/where_are_you_going.wav',
          ),
          phrases_catgory(
            JpName: 'Hai, kimasu',
            EnName: 'Yes, I will come',
            Audio: 'images/phreses/yes_im_coming.wav',
          ),
        ],
      ),
    );
  }
}

class phrases_catgory extends StatefulWidget {
  phrases_catgory({this.EnName, this.JpName, this.Audio});

  String? JpName;
  String? EnName;
  String? Audio;

  @override
  State<phrases_catgory> createState() => _phrases_catgoryState();
}

class _phrases_catgoryState extends State<phrases_catgory> {
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
      color: Color(0xff50Adc7),
      height: 89,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${widget.JpName}',
                  style: TextStyle(color: Colors.white, fontSize: 16),
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
