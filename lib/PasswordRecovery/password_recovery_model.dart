import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'password_recovery_widget.dart' show PasswordRecoveryWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PasswordRecoveryModel extends FlutterFlowModel<PasswordRecoveryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RecoveryEmail widget.
  FocusNode? recoveryEmailFocusNode;
  TextEditingController? recoveryEmailController;
  String? Function(BuildContext, String?)? recoveryEmailControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    recoveryEmailFocusNode?.dispose();
    recoveryEmailController?.dispose();
  }

/// Action blocks are added here.

/// Additional helper methods are added here.
}
