import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'podast_audio_model.dart';
export 'podast_audio_model.dart';

class PodastAudioWidget extends StatefulWidget {
  const PodastAudioWidget({Key? key}) : super(key: key);

  @override
  _PodastAudioWidgetState createState() => _PodastAudioWidgetState();
}

class _PodastAudioWidgetState extends State<PodastAudioWidget> {
  late PodastAudioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PodastAudioModel());
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
              'assets/audios/ADURA_FUN_OJO_ONI.mp3',
              metas: Metas(
                id: 'ADURA_FUN_OJO_ONI.mp3-0e6292fd',
                title: 'Adura fun ojo oni',
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
