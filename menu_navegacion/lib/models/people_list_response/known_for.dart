import 'dart:convert';

class KnownFor {
	String? backdropPath;
	int? id;
	String? title;
	String? originalTitle;
	String? overview;
	String? posterPath;
	String? mediaType;
	bool? adult;
	String? originalLanguage;
	List<int>? genreIds;
	double? popularity;
	String? releaseDate;
	bool? video;
	double? voteAverage;
	int? voteCount;

	KnownFor({
		this.backdropPath, 
		this.id, 
		this.title, 
		this.originalTitle, 
		this.overview, 
		this.posterPath, 
		this.mediaType, 
		this.adult, 
		this.originalLanguage, 
		this.genreIds, 
		this.popularity, 
		this.releaseDate, 
		this.video, 
		this.voteAverage, 
		this.voteCount, 
	});

	factory KnownFor.fromMap(Map<String, dynamic> data) => KnownFor(
				backdropPath: data['backdrop_path'] as String?,
				id: data['id'] as int?,
				title: data['title'] as String?,
				originalTitle: data['original_title'] as String?,
				overview: data['overview'] as String?,
				posterPath: data['poster_path'] as String?,
				mediaType: data['media_type'] as String?,
				adult: data['adult'] as bool?,
				originalLanguage: data['original_language'] as String?,
				genreIds: data['genre_ids'] as List<int>?,
				popularity: (data['popularity'] as num?)?.toDouble(),
				releaseDate: data['release_date'] as String?,
				video: data['video'] as bool?,
				voteAverage: (data['vote_average'] as num?)?.toDouble(),
				voteCount: data['vote_count'] as int?,
			);

	Map<String, dynamic> toMap() => {
				'backdrop_path': backdropPath,
				'id': id,
				'title': title,
				'original_title': originalTitle,
				'overview': overview,
				'poster_path': posterPath,
				'media_type': mediaType,
				'adult': adult,
				'original_language': originalLanguage,
				'genre_ids': genreIds,
				'popularity': popularity,
				'release_date': releaseDate,
				'video': video,
				'vote_average': voteAverage,
				'vote_count': voteCount,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [KnownFor].
	factory KnownFor.fromJson(String data) {
		return KnownFor.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [KnownFor] to a JSON string.
	String toJson() => json.encode(toMap());
}
