import 'package:equatable/equatable.dart';
import 'package:movies_app/movies/domain/entities/genres.dart';

class MovieDetails extends Equatable {
  final int id;
  final String overView;
  final List<Genres> genres;
  final double voteAverage;
  final String backdropPath;
  final String releaseDate;
  final int runTime;
  final String title;

  const MovieDetails(
      {required this.id,
      required this.overView,
      required this.genres,
      required this.voteAverage,
      required this.backdropPath,
      required this.releaseDate,
      required this.runTime,
      required this.title});

  @override
  // TODO: implement props
  List<Object> get props => [
        id,
        overView,
        genres,
        voteAverage,
        backdropPath,
        releaseDate,
        runTime,
        title,
      ];
}
