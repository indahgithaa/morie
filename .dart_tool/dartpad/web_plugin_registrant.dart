// Flutter web plugin registrant file.
//
// Generated file. Do not edit.
//

// @dart = 2.13
// ignore_for_file: type=lint

import 'package:assets_audio_player_web/web/assets_audio_player_web.dart';
import 'package:audio_session/audio_session_web.dart';
import 'package:audioplayers_web/audioplayers_web.dart';
import 'package:cloud_firestore_web/cloud_firestore_web.dart';
import 'package:firebase_auth_web/firebase_auth_web.dart';
import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart';
import 'package:just_audio_web/just_audio_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins([final Registrar? pluginRegistrar]) {
  final Registrar registrar = pluginRegistrar ?? webPluginRegistrar;
  AssetsAudioPlayerWebPlugin.registerWith(registrar);
  AudioSessionWeb.registerWith(registrar);
  AudioplayersPlugin.registerWith(registrar);
  FirebaseFirestoreWeb.registerWith(registrar);
  FirebaseAuthWeb.registerWith(registrar);
  FirebaseCoreWeb.registerWith(registrar);
  GoogleSignInPlugin.registerWith(registrar);
  JustAudioPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
