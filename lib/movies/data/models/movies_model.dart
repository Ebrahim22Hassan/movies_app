import 'package:movies_app/movies/domain/entities/movies.dart';

class MoviesModel extends Movies {
  const MoviesModel(
      {required super.releaseDate,
      required super.id,
      required super.backdropPath,
      required super.title,
      required super.overview,
      required super.genreIds,
      required super.voteAverage});

  factory MoviesModel.fromJson(Map<String, dynamic> json) =>

      /// get from API
      MoviesModel(
        id: json["id"],
        backdropPath: json["backdrop_path"],
        title: json["title"],
        overview: json["overview"],
        genreIds: List<int>.from(json["genre_ids"].map((e) => e)),
        voteAverage: json["vote_average"].toDouble(),
        releaseDate: json["release_date"],
      );
}
