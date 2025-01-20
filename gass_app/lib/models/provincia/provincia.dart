import 'dart:convert';

class Provincia {
	String? idPovincia;
	String? idccaa;
	String? provincia;
	String? ccaa;

	Provincia({this.idPovincia, this.idccaa, this.provincia, this.ccaa});

	factory Provincia.fromMap(Map<String, dynamic> data) => Provincia(
				idPovincia: data['IDPovincia'] as String?,
				idccaa: data['IDCCAA'] as String?,
				provincia: data['Provincia'] as String?,
				ccaa: data['CCAA'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'IDPovincia': idPovincia,
				'IDCCAA': idccaa,
				'Provincia': provincia,
				'CCAA': ccaa,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Provincia].
	factory Provincia.fromJson(String data) {
		return Provincia.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Provincia] to a JSON string.
	String toJson() => json.encode(toMap());
}
