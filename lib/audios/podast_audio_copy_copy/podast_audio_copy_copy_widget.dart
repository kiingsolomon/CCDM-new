import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'podast_audio_copy_copy_model.dart';
export 'podast_audio_copy_copy_model.dart';

class PodastAudioCopyCopyWidget extends StatefulWidget {
  const PodastAudioCopyCopyWidget({Key? key}) : super(key: key);

  @override
  _PodastAudioCopyCopyWidgetState createState() =>
      _PodastAudioCopyCopyWidgetState();
}

class _PodastAudioCopyCopyWidgetState extends State<PodastAudioCopyCopyWidget> {
  late PodastAudioCopyCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PodastAudioCopyCopyModel());
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
            audio: Audio.network(
              'https://rr3---sn-5hneknes.googlevideo.com/videoplayback?expire=1692123866&ei=em7bZKj8Mcbo8wTOm7XQBQ&ip=192.241.111.108&id=o-ABWhBt4cQtu4AbH51EFkFQkazD5DkVRs1x7QQJ95nxAd&itag=140&source=youtube&requiressl=yes&spc=UWF9f6P6UDjrzC0tWSSuSAgPjWkJwznk0rhlPLJQdg&vprv=1&svpuc=1&mime=audio%2Fmp4&ns=o2gccdfTsQ4VgUegqmLntToP&gir=yes&clen=8270508&dur=510.978&lmt=1667074405965746&keepalive=yes&fexp=24007246,24363392,51000011&c=MWEB&txp=5432434&n=GTvi8Ya0uqjpuA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cns%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIhANjrpuenjDRvyAmatDJvsXeSJ5-ZKgJbmtDqoRuXwtsSAiBH1d21qYZR0ckj4V0ClxRwog7ujVNMuixzNYW5qLaW8Q%3D%3D&title=ADURA+ISEJU+MEWA+%28PART+88%29+-+28TH+OCTOBER+2022+-+VEN+TUNDE+BAMIGBOYE&redirect_counter=1&cm2rm=sn-ab5ee67l&req_id=de710c0c89ca3ee&cms_redirect=yes&cmsv=e&mh=_1&mip=129.205.113.157&mm=34&mn=sn-5hneknes&ms=ltu&mt=1692102053&mv=m&mvi=3&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgDlnoYeh6wb-01XbdCkhvld8ol79pcDOfNtUmAvduaosCIHSCwF4mRejvOOyx771XkI0LUfgYyLkFOb-QzpIMoq0H',
              metas: Metas(
                id: 'videoplayback?expire=1692123866&ei=em7bZKj8Mcbo8wTOm7XQBQ&ip=192.241.111.108&id=o-ABWhBt4cQtu4AbH51EFkFQkazD5DkVRs1x7QQJ95nxAd&itag=140&source=youtube&requiressl=yes&spc=UWF9f6P6UDjrzC0tWSSuSAgPjWkJwznk0rhlPLJQdg&vprv=1&svpuc=1&mime=audio%2Fmp4&ns=o2gccdfTsQ4VgUegqmLntToP&gir=yes&clen=8270508&dur=510.978&lmt=1667074405965746&keepalive=yes&fexp=24007246,24363392,51000011&c=MWEB&txp=5432434&n=GTvi8Ya0uqjpuA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cns%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIhANjrpuenjDRvyAmatDJvsXeSJ5-ZKgJbmtDqoRuXwtsSAiBH1d21qYZR0ckj4V0ClxRwog7ujVNMuixzNYW5qLaW8Q%3D%3D&title=ADURA+ISEJU+MEWA+%28PART+88%29+-+28TH+OCTOBER+2022+-+VEN+TUNDE+BAMIGBOYE&redirect_counter=1&cm2rm=sn-ab5ee67l&req_id=de710c0c89ca3ee&cms_redirect=yes&cmsv=e&mh=_1&mip=129.205.113.157&mm=34&mn=sn-5hneknes&ms=ltu&mt=1692102053&mv=m&mvi=3&pl=24&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgDlnoYeh6wb-01XbdCkhvld8ol79pcDOfNtUmAvduaosCIHSCwF4mRejvOOyx771XkI0LUfgYyLkFOb-QzpIMoq0H-94a934cc',
                title: 'ADURA ISEJU MEWA (PART 88)',
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
