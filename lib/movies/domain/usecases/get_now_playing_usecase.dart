import 'package:dartz/dartz.dart';
import 'package:movies_app/core/usecase/base_use_case.dart';

import '../../../core/error/failure.dart';
import '../entities/movies.dart';
import '../repository/base_movies_repository.dart';

class GetNowPlayingMoviesUseCase
    extends BaseUseCase<List<Movies>, NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movies>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getNowPlaying();
  }
}
