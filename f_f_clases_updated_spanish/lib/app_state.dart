import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _Resultado = 0;
  int get Resultado => _Resultado;
  set Resultado(int value) {
    _Resultado = value;
  }

  bool _condicion = false;
  bool get condicion => _condicion;
  set condicion(bool value) {
    _condicion = value;
  }
}
