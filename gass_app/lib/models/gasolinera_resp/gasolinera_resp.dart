import 'dart:convert';

import 'gasolinera.dart';

class GasolineraResp {
  String? fecha;
  List<Gasolinera>? gasolinera;
  String? nota;
  String? resultadoConsulta;

  GasolineraResp({
    this.fecha,
    this.gasolinera,
    this.nota,
    this.resultadoConsulta,
  });

  factory GasolineraResp.fromMap(Map<String, dynamic> data) {
    return GasolineraResp(
      fecha: data['Fecha'] as String?,
      gasolinera: (data['ListaEESSPrecio'] as List<dynamic>?)
          ?.map((e) => Gasolinera.fromMap(e as Map<String, dynamic>))
          .toList(),
      nota: data['Nota'] as String?,
      resultadoConsulta: data['ResultadoConsulta'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'Fecha': fecha,
        'ListaEESSPrecio': gasolinera?.map((e) => e.toMap()).toList(),
        'Nota': nota,
        'ResultadoConsulta': resultadoConsulta,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GasolineraResp].
  factory GasolineraResp.fromJson(String data) {
    return GasolineraResp.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GasolineraResp] to a JSON string.
  String toJson() => json.encode(toMap());
}
