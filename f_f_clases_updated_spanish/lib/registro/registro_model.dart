import '/flutter_flow/flutter_flow_util.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/material.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
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
  // State field(s) for ConfirmarContrasena widget.
  FocusNode? confirmarContrasenaFocusNode;
  TextEditingController? confirmarContrasenaTextController;
  late bool confirmarContrasenaVisibility;
  String? Function(BuildContext, String?)?
      confirmarContrasenaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    contrasenaVisibility = false;
    confirmarContrasenaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    correoFocusNode?.dispose();
    correoTextController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaTextController?.dispose();

    confirmarContrasenaFocusNode?.dispose();
    confirmarContrasenaTextController?.dispose();
  }
}
