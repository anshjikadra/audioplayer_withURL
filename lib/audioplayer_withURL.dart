import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:just_audio_background/just_audio_background.dart';


//=============================================

class audioplayer_withURL extends StatefulWidget {
  const audioplayer_withURL({Key? key}) : super(key: key);

  @override
  State<audioplayer_withURL> createState() => _audioplayer_withURLState();
}

class _audioplayer_withURLState extends State<audioplayer_withURL> {

  final AudioPlayer audioPlayer = AudioPlayer();
  bool isplaying = false;


  @override
  void initState() {
    audioPlayer.setUrl(
        'https://www.carpeapps.net/audios/workoutmusic/27calmwalk.mp3');
    audioPlayer.playerStateStream.listen((event) {
      event.playing;
    });
    super.initState();
    // notificationwidget.init();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Audioplayer_withURL",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () async {
                    if (isplaying) {
                      await audioPlayer.pause();
                    }
                    else {
                      // notificationwidget.showNotification(
                      //     title: "Notification", body: "Playing music"),
                      print("SAHOW NOTIFICATION YOPUR DEVICE");
                      print("AUDIO_PLAYERS");
                      audioPlayer.play();
                    }
                    setState(() {
                      isplaying = !isplaying;
                    });
                  },
                  child: isplaying ? Icon(Icons.pause) : Icon(
                      Icons.play_arrow)),),
          ],
        ),
      ),
    );
  }
}



