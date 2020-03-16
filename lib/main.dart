import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('Music playing'),

    ),
    body: PlayMusic(),
  ),
));

class PlayMusic extends StatefulWidget {

  @override
  _PlayMusicState createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic> {
  void playSound(int a){
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
        "assets/note$a.wav");

  }

   Expanded bTs( {Color color, int a}){
    return Expanded(child: FlatButton(
        color: color,

        onPressed:(){
          playSound(a);
//
        }

      ),);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
      bTs(color: Colors.red, a:1),
        bTs(color: Colors.yellow, a:2) ,
        bTs(color: Colors.purple, a:3) ,
        bTs(color: Colors.pink, a:4) ,
        bTs(color: Colors.lightBlue, a:5) ,

      ],
    );
  }
}





