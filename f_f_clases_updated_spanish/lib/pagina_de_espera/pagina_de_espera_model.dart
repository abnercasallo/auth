import '/flutter_flow/flutter_flow_util.dart';
import 'pagina_de_espera_widget.dart' show PaginaDeEsperaWidget;
import 'package:flutter/material.dart';

class PaginaDeEsperaModel extends FlutterFlowModel<PaginaDeEsperaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
