import 'package:audioplayer_withurl/audioplayer_withURL.dart';
import 'package:flutter/material.dart';
import 'package:just_audio_background/just_audio_background.dart';

void main() {
  runApp(MaterialApp(
    home: audioplayer_withURL(),
  ));
}
// Future<void> main() async {
//   await JustAudioBackground.init(
//     androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
//     androidNotificationChannelName: 'Audio playback',
//     androidNotificationOngoing: true,
//   );
//   runApp(MaterialApp(home: audioplayer_withURL(),));
// }


