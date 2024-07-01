import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'registro_model.dart';
export 'registro_model.dart';

class RegistroWidget extends StatefulWidget {
  const RegistroWidget({super.key});

  @override
  State<RegistroWidget> createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  late RegistroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistroModel());

    _model.correoTextController ??= TextEditingController();
    _model.correoFocusNode ??= FocusNode();

    _model.contrasenaTextController ??= TextEditingController();
    _model.contrasenaFocusNode ??= FocusNode();

    _model.confirmarContrasenaTextController ??= TextEditingController();
    _model.confirmarContrasenaFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          automaticallyImplyLeading: false,
          title: Text(
            'Registro',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.network(
                      'https://fastly.picsum.photos/id/258/600/600.jpg?hmac=jjxCqpZMFo8JFEJt95waL8ra6hdkN_PdfZ4UiKN9ElU',
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 120.0,
                            height: 120.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://picsum.photos/seed/786/600',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.approval_rounded,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 24.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 6.0, 0.0, 0.0),
                                  child: Text(
                                    'Mi Marca',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 5.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(-0.95, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Correo Electrónico',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Container(
                  height: 45.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 5.0, 8.0, 0.0),
                    child: SizedBox(
                      width: 350.0,
                      child: TextFormField(
                        controller: _model.correoTextController,
                        focusNode: _model.correoFocusNode,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Colocar Correo',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        validator: _model.correoTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.95, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Contraseña',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Container(
                  height: 45.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 5.0, 8.0, 0.0),
                    child: SizedBox(
                      width: 350.0,
                      child: TextFormField(
                        controller: _model.contrasenaTextController,
                        focusNode: _model.contrasenaFocusNode,
                        autofocus: true,
                        obscureText: !_model.contrasenaVisibility,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => _model.contrasenaVisibility =
                                  !_model.contrasenaVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              _model.contrasenaVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              size: 22,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        validator: _model.contrasenaTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.95, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Confirmar Contraseña',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Container(
                height: 45.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: SizedBox(
                  width: 350.0,
                  child: TextFormField(
                    controller: _model.confirmarContrasenaTextController,
                    focusNode: _model.confirmarContrasenaFocusNode,
                    autofocus: true,
                    obscureText: !_model.confirmarContrasenaVisibility,
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryText,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => _model.confirmarContrasenaVisibility =
                              !_model.confirmarContrasenaVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.confirmarContrasenaVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                    validator: _model.confirmarContrasenaTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    if (_model.contrasenaTextController.text !=
                        _model.confirmarContrasenaTextController.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Passwords don\'t match!',
                          ),
                        ),
                      );
                      return;
                    }

                    final user = await authManager.createAccountWithEmail(
                      context,
                      _model.correoTextController.text,
                      _model.contrasenaTextController.text,
                    );
                    if (user == null) {
                      return;
                    }

                    await UsersRecord.collection
                        .doc(user.uid)
                        .update(createUsersRecordData(
                          email: _model.correoTextController.text,
                        ));

                    await authManager.sendEmailVerification();

                    context.goNamedAuth('Home', context.mounted);
                  },
                  text: 'Registrarse',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      ' ¿Ya tienes cuenta?',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'Iniciar Sesión',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).secondary,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
