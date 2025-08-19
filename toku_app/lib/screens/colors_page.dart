import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class colorssPage extends StatelessWidget {
  const colorssPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text(
          'Colors',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          color_catgory(
            NameImage: 'assets/images/colors/color_black.png',
            EnName: 'Black',
            JpName: 'Kuro',
            Audio: 'images/colors/sounds/black.wav',
          ),
          color_catgory(
            NameImage: 'assets/images/colors/color_brown.png',
            EnName: 'Brown',
            JpName: 'Chairo',
            Audio: 'images/colors/sounds/brown.wav',
          ),
          color_catgory(
            NameImage: 'assets/images/colors/color_dusty_yellow.png',
            EnName: 'Dusty Yellow',
            JpName: 'Hokori Puro',
            Audio: 'images/colors/sounds/dusty yellow.wav',
          ),
          color_catgory(
            NameImage: 'assets/images/colors/color_gray.png',
            EnName: 'Gray',
            JpName: 'Gurei',
            Audio: 'images/colors/sounds/gray.wav',
          ),
          color_catgory(
            NameImage: 'assets/images/colors/color_green.png',
            EnName: 'Green',
            JpName: 'Midori',
            Audio: 'images/colors/sounds/green.wav',
          ),
          color_catgory(
            NameImage: 'assets/images/colors/color_red.png',
            EnName: 'Red',
            JpName: 'Aka',
            Audio: 'images/colors/sounds/red.wav',
          ),
          color_catgory(
            NameImage: 'assets/images/colors/color_white.png',
            EnName: 'White',
            JpName: 'Shiro',
            Audio: 'images/colors/sounds/white.wav',
          ),
          color_catgory(
            NameImage: 'assets/images/colors/yellow.png',
            EnName: 'Yellow',
            JpName: 'Kiiro',
            Audio: 'images/colors/sounds/yellow.wav',
          ),
        ],
      ),
    );
  }
}

class color_catgory extends StatefulWidget {
  color_catgory({
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
  State<color_catgory> createState() => _color_catgoryState();
}

class _color_catgoryState extends State<color_catgory> {
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
