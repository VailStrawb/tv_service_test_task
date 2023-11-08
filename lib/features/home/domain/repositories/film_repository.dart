import 'package:tv_service_test_task/features/home/domain/models/film_model.dart';

abstract class FilmRepository {
  Future<List<FilmModel>> fetchComedyFilms();
  Future<List<FilmModel>> fetchTopFilms();
  Future<FilmModel> fetchNewFilm();
}


