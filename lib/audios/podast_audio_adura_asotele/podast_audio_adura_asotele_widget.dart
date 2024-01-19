import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'podast_audio_adura_asotele_model.dart';
export 'podast_audio_adura_asotele_model.dart';

class PodastAudioAduraAsoteleWidget extends StatefulWidget {
  const PodastAudioAduraAsoteleWidget({Key? key}) : super(key: key);

  @override
  _PodastAudioAduraAsoteleWidgetState createState() =>
      _PodastAudioAduraAsoteleWidgetState();
}

class _PodastAudioAduraAsoteleWidgetState
    extends State<PodastAudioAduraAsoteleWidget> {
  late PodastAudioAduraAsoteleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PodastAudioAduraAsoteleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140.0,
      decoration: BoxDecoration(
        color: Color(0x06FFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).primaryBackground,
                  FlutterFlowTheme.of(context).secondaryBackground
                ],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
          ),
          FlutterFlowAudioPlayer(
            audio: Audio(
              'assets/audios/ADURA_ASOTELE_Ven_Tunde_Bamigboye.mp3',
              metas: Metas(
                id: 'ADURA_ASOTELE_Ven_Tunde_Bamigboye.mp3-0678c225',
                title: 'Adura Asotele_Ven Tunde',
              ),
            ),
            titleTextStyle: FlutterFlowTheme.of(context).titleLarge,
            playbackDurationTextStyle: FlutterFlowTheme.of(context).labelMedium,
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            playbackButtonColor: FlutterFlowTheme.of(context).tertiary,
            activeTrackColor: FlutterFlowTheme.of(context).alternate,
            elevation: 4.0,
            playInBackground: PlayInBackground.enabled,
          ),
        ],
      ),
    );
  }
}
