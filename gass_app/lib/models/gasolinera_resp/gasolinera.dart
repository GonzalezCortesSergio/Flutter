import 'dart:convert';

class Gasolinera {
  String? c;
  String? direcciN;
  String? horario;
  String? latitud;
  String? localidad;
  String? longitudWgs84;
  String? margen;
  String? municipio;
  String? precioBiodiesel;
  String? precioBioetanol;
  String? precioGasNaturalComprimido;
  String? precioGasNaturalLicuado;
  String? precioGasesLicuadosDelPetrLeo;
  String? precioGasoleoA;
  String? precioGasoleoB;
  String? precioGasoleoPremium;
  String? precioGasolina95E10;
  String? precioGasolina95E5;
  String? precioGasolina95E5Premium;
  String? precioGasolina98E10;
  String? precioGasolina98E5;
  String? precioHidrogeno;
  String? provincia;
  String? remisiN;
  String? rTulo;
  String? tipoVenta;
  String? bioEtanol;
  String? sterMetLico;
  String? ideess;
  String? idMunicipio;
  String? idProvincia;
  String? idccaa;

  Gasolinera({
    this.c,
    this.direcciN,
    this.horario,
    this.latitud,
    this.localidad,
    this.longitudWgs84,
    this.margen,
    this.municipio,
    this.precioBiodiesel,
    this.precioBioetanol,
    this.precioGasNaturalComprimido,
    this.precioGasNaturalLicuado,
    this.precioGasesLicuadosDelPetrLeo,
    this.precioGasoleoA,
    this.precioGasoleoB,
    this.precioGasoleoPremium,
    this.precioGasolina95E10,
    this.precioGasolina95E5,
    this.precioGasolina95E5Premium,
    this.precioGasolina98E10,
    this.precioGasolina98E5,
    this.precioHidrogeno,
    this.provincia,
    this.remisiN,
    this.rTulo,
    this.tipoVenta,
    this.bioEtanol,
    this.sterMetLico,
    this.ideess,
    this.idMunicipio,
    this.idProvincia,
    this.idccaa,
  });

  factory Gasolinera.fromMap(Map<String, dynamic> data) {
    return Gasolinera(
      c: data['C.P.'] as String?,
      direcciN: data['Dirección'] as String?,
      horario: data['Horario'] as String?,
      latitud: data['Latitud'] as String?,
      localidad: data['Localidad'] as String?,
      longitudWgs84: data['Longitud (WGS84)'] as String?,
      margen: data['Margen'] as String?,
      municipio: data['Municipio'] as String?,
      precioBiodiesel: data['Precio Biodiesel'] as String?,
      precioBioetanol: data['Precio Bioetanol'] as String?,
      precioGasNaturalComprimido:
          data['Precio Gas Natural Comprimido'] as String?,
      precioGasNaturalLicuado: data['Precio Gas Natural Licuado'] as String?,
      precioGasesLicuadosDelPetrLeo:
          data['Precio Gases licuados del petróleo'] as String?,
      precioGasoleoA: data['Precio Gasoleo A'] as String?,
      precioGasoleoB: data['Precio Gasoleo B'] as String?,
      precioGasoleoPremium: data['Precio Gasoleo Premium'] as String?,
      precioGasolina95E10: data['Precio Gasolina 95 E10'] as String?,
      precioGasolina95E5: data['Precio Gasolina 95 E5'] as String?,
      precioGasolina95E5Premium:
          data['Precio Gasolina 95 E5 Premium'] as String?,
      precioGasolina98E10: data['Precio Gasolina 98 E10'] as String?,
      precioGasolina98E5: data['Precio Gasolina 98 E5'] as String?,
      precioHidrogeno: data['Precio Hidrogeno'] as String?,
      provincia: data['Provincia'] as String?,
      remisiN: data['Remisión'] as String?,
      rTulo: data['Rótulo'] as String?,
      tipoVenta: data['Tipo Venta'] as String?,
      bioEtanol: data['% BioEtanol'] as String?,
      sterMetLico: data['% Éster metílico'] as String?,
      ideess: data['IDEESS'] as String?,
      idMunicipio: data['IDMunicipio'] as String?,
      idProvincia: data['IDProvincia'] as String?,
      idccaa: data['IDCCAA'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'C': c,
        'Dirección': direcciN,
        'Horario': horario,
        'Latitud': latitud,
        'Localidad': localidad,
        'Longitud (WGS84)': longitudWgs84,
        'Margen': margen,
        'Municipio': municipio,
        'Precio Biodiesel': precioBiodiesel,
        'Precio Bioetanol': precioBioetanol,
        'Precio Gas Natural Comprimido': precioGasNaturalComprimido,
        'Precio Gas Natural Licuado': precioGasNaturalLicuado,
        'Precio Gases licuados del petróleo': precioGasesLicuadosDelPetrLeo,
        'Precio Gasoleo A': precioGasoleoA,
        'Precio Gasoleo B': precioGasoleoB,
        'Precio Gasoleo Premium': precioGasoleoPremium,
        'Precio Gasolina 95 E10': precioGasolina95E10,
        'Precio Gasolina 95 E5': precioGasolina95E5,
        'Precio Gasolina 95 E5 Premium': precioGasolina95E5Premium,
        'Precio Gasolina 98 E10': precioGasolina98E10,
        'Precio Gasolina 98 E5': precioGasolina98E5,
        'Precio Hidrogeno': precioHidrogeno,
        'Provincia': provincia,
        'Remisión': remisiN,
        'Rótulo': rTulo,
        'Tipo Venta': tipoVenta,
        '% BioEtanol': bioEtanol,
        '% Éster metílico': sterMetLico,
        'IDEESS': ideess,
        'IDMunicipio': idMunicipio,
        'IDProvincia': idProvincia,
        'IDCCAA': idccaa,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ListaEessPrecio].
  factory Gasolinera.fromJson(String data) {
    return Gasolinera.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ListaEessPrecio] to a JSON string.
  String toJson() => json.encode(toMap());
}
