import 'package:movies_app/movies/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({super.backDropPath, required super.id});

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        id: json["id"],
        backDropPath:
            json["backdrop_path"] ?? '/uMSxXLfH7v30gRNBqsQaSP3yqX5.jpg',
      );
}
