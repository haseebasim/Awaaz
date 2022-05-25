import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';

class SoundPlayer {
  FlutterSoundPlayer? _audioPlayer;
  

  Future init() async {
    _audioPlayer = FlutterSoundPlayer();

    await _audioPlayer!.openAudioSession();
  }

  dynamic get onProgress {
    return _audioPlayer!.onProgress;
  }

  bool get isPlaying {
    return _audioPlayer!.isPlaying;
  }

  void dispose() {
    _audioPlayer!.closeAudioSession();
    _audioPlayer = null;
  }

  Future setSubscriptionDuraionHelper(double d) async {
    await _audioPlayer!.setSubscriptionDuration(
      Duration(milliseconds: d.floor()),
    );
  }

  Future play(String path, {required VoidCallback whenFinished}) async {
    await _audioPlayer?.startPlayer(
        fromURI: path, whenFinished: whenFinished, codec: Codec.pcm16WAV);
  }

  Future stop() async {
    await _audioPlayer?.stopPlayer();
  }

  Future toggle(
      {required String path, required VoidCallback whenFinished}) async {
    if (await _audioPlayer!.isStopped) {
      play(path, whenFinished: whenFinished);
    } else {
      stop();
    }
  }
}
