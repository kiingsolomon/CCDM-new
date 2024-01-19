import '/audios/podast_audio/podast_audio_widget.dart';
import '/audios/podast_audio_adura_asotele/podast_audio_adura_asotele_widget.dart';
import '/audios/podast_audio_copy/podast_audio_copy_widget.dart';
import '/audios/podast_audio_copy_copy/podast_audio_copy_copy_widget.dart';
import '/audios/podast_audio_copy_copy_copy/podast_audio_copy_copy_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'podcast_page_widget.dart' show PodcastPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PodcastPageModel extends FlutterFlowModel<PodcastPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
