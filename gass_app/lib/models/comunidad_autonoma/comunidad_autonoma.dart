import 'dart:convert';

class ComunidadAutonoma {
	String? idccaa;
	String? ccaa;

	ComunidadAutonoma({this.idccaa, this.ccaa});

	factory ComunidadAutonoma.fromMap(Map<String, dynamic> data) {
		return ComunidadAutonoma(
			idccaa: data['IDCCAA'] as String?,
			ccaa: data['CCAA'] as String?,
		);
	}



	Map<String, dynamic> toMap() => {
				'IDCCAA': idccaa,
				'CCAA': ccaa,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ComunidadAutonoma].
	factory ComunidadAutonoma.fromJson(String data) {
		return ComunidadAutonoma.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [ComunidadAutonoma] to a JSON string.
	String toJson() => json.encode(toMap());
}
