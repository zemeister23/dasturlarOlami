class Dasturlash{
  String _dasturlashIsmi;
  String _dasturlashTarixi;
  String _dasturlashQulayliklari;
  String _kichikRasm;
  String _kattaRasm;

  Dasturlash(this._dasturlashIsmi,
      this._dasturlashTarixi ,
      this._dasturlashQulayliklari,
      this._kichikRasm,
      this._kattaRasm);

  String get dasturlashIsmi => _dasturlashIsmi;

  set dasturlashIsmi(String value) {
    _dasturlashIsmi = value;
  }

  String get kichikRasm => _kichikRasm;

  set kichikRasm(String value) {
    _kichikRasm = value;
  }

  String get dasturlashTarixi => _dasturlashTarixi;

  String get dasturlashQulayliklari => _dasturlashQulayliklari;

  set dasturlashQulayliklari(String value) {
    _dasturlashQulayliklari = value;
  }

  set dasturlashTarixi(String value) {
    _dasturlashTarixi = value;
  }

  String get kattaRasm => _kattaRasm;

  set kattaRasm(String value) {
    _kattaRasm = value;
  }
}