import 'package:equatable/equatable.dart';

class Movies extends Equatable {
  final int id;
  final String backdropPath;
  final String title;
  final String overview;
  final List<int> genreIds;
  final double voteAverage;
  final String releaseDate;

  const Movies(
      {required this.releaseDate,
      required this.id,
      required this.backdropPath,
      required this.title,
      required this.overview,
      required this.genreIds,
      required this.voteAverage});

  @override
  List<Object> get props => [
        id,
        backdropPath,
        title,
        overview,
        genreIds,
        voteAverage,
        releaseDate,
      ];
}
