import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoTextController;
  String? Function(BuildContext, String?)? correoTextControllerValidator;
  // State field(s) for Contrasena widget.
  FocusNode? contrasenaFocusNode;
  TextEditingController? contrasenaTextController;
  late bool contrasenaVisibility;
  String? Function(BuildContext, String?)? contrasenaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    contrasenaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    correoFocusNode?.dispose();
    correoTextController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaTextController?.dispose();
  }
}
