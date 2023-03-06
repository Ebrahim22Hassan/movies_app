import 'package:movies_app/movies/data/models/genres_model.dart';
import 'package:movies_app/movies/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel(
      {required super.id,
      required super.overView,
      required super.genres,
      required super.voteAverage,
      required super.backdropPath,
      required super.releaseDate,
      required super.runTime,
      required super.title});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        id: json["id"],
        overView: json["overview"],
        title: json["title"],
        backdropPath: json["backdrop_path"],
        genres: List<GenresModel>.from(
            json["genres"].map((x) => GenresModel.fromJson(x))),
        releaseDate: json["release_date"],
        runTime: json["runtime"],
        voteAverage: json["vote_average"].toDouble(),
      );
}
