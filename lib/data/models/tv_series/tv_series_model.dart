import 'package:ditonton/domain/entities/tv_series.dart';

// ignore: must_be_immutable
class TvSeriesModel extends TvSeries {
  TvSeriesModel({
    required String? backdropPath,
    required String? firstAirDate,
    required List<int>? genreIds,
    required int id,
    required String? name,
    required List<String>? originCountry,
    required String? originalLanguage,
    required String? originalName,
    required String? overview,
    required double? popularity,
    required String? posterPath,
    required double? voteAverage,
    required int? voteCount,
  }) : super(
          backdropPath: backdropPath,
          firstAirDate: firstAirDate,
          genreIds: genreIds,
          id: id,
          name: name,
          originCountry: originCountry,
          originalLanguage: originalLanguage,
          originalName: originalName,
          overview: overview,
          popularity: popularity,
          posterPath: posterPath,
          voteAverage: voteAverage,
          voteCount: voteCount,
        );

  factory TvSeriesModel.fromJson(Map<String, dynamic> json) => TvSeriesModel(
        backdropPath: json['backdrop_path'],
        firstAirDate: json['first_air_date'],
        genreIds: json['genre_ids'].cast<int>(),
        id: json['id'],
        name: json['name'],
        originCountry: json['origin_country'].cast<String>(),
        originalLanguage: json['original_language'],
        originalName: json['original_name'],
        overview: json['overview'],
        popularity: json['popularity'],
        posterPath: json['poster_path'],
        voteAverage: (json['vote_average'] as num ).toDouble(),
        voteCount: json['vote_count'],
      );

  Map<String, dynamic> toJson() => {
        "backdrop_path": backdropPath,
        "first_air_date": firstAirDate,
        "genre_ids": List<dynamic>.from(genreIds!.map((x) => x)),
        "id": id,
        "name": name,
        "origin_country": List<dynamic>.from(originCountry!.map((x) => x)),
        "original_language": originalLanguage,
        "original_name": originalName,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "vote_average": voteAverage,
        "vote_count": voteCount,
      };
  TvSeries toEntity() => TvSeries(
        backdropPath: backdropPath,
        firstAirDate: firstAirDate,
        genreIds: genreIds,
        id: id,
        name: name,
        originCountry: originCountry,
        originalLanguage: originalLanguage,
        originalName: originalName,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}
