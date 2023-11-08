import 'package:tv_service_test_task/features/home/domain/models/film_model.dart';
import 'package:tv_service_test_task/features/home/domain/repositories/film_repository.dart';
import 'package:tv_service_test_task/gen/assets.gen.dart';

class MockFilmRepository implements FilmRepository {
  @override
  Future<List<FilmModel>> fetchComedyFilms() async {
    return [
      FilmModel(
        filmName: "Синий жук",
        filmImage: Assets.pngs.blueBag.path,
        filmId: 2,
        filmRate: 10,
        filmNameImage: "",
        filmDescription: "",
      ),
      FilmModel(
        filmName: "Домашняя игра",
        filmImage: Assets.pngs.homeGame.path,
        filmId: 3,
        filmRate: 6.9,
        filmNameImage: "",
        filmDescription: "",
      ),
      FilmModel(
        filmName: "Салют 7",
        filmImage: Assets.pngs.firework.path,
        filmId: 3,
        filmRate: 5.8,
        filmNameImage: "",
        filmDescription: "",
      ),
      FilmModel(
        filmName: "Поймай меня, если сможешь",
        filmImage: Assets.pngs.catchMeIfYouCan.path,
        filmId: 3,
        filmRate: 7.0,
        filmNameImage: "",
        filmDescription: "",
      ),
    ];
  }

  @override
  Future<FilmModel> fetchNewFilm() async {
    return FilmModel(
      filmName: "Джон Уик",
      filmImage: Assets.pngs.johnWickPhoto.path,
      filmId: 1,
      filmRate: 5.6,
      filmNameImage: Assets.pngs.johnWick.path,
      filmDescription:
          'Чтобы обрести свободу киллер-изгой бросает\nвызов Правлению кланов. Самая зрелищная\nчасть стильной экшен-саги',
    );
  }

  @override
  Future<List<FilmModel>> fetchTopFilms() async {
    return [
      FilmModel(
        filmName: "",
        filmImage: Assets.pngs.myWonderfulUnhappiness.path,
        filmId: 1,
        filmRate: 0,
        filmNameImage: "",
        filmDescription: "",
      ),
      FilmModel(
        filmName: "",
        filmImage: Assets.pngs.redMessage.path,
        filmId: 2,
        filmRate: 0,
        filmNameImage: "",
        filmDescription: "",
      ),
      FilmModel(
        filmName: "",
        filmImage: Assets.pngs.firework.path,
        filmId: 3,
        filmRate: 0,
        filmNameImage: "",
        filmDescription: "",
      ),
      FilmModel(
        filmName: "",
        filmImage: Assets.pngs.redMessage.path,
        filmId: 7,
        filmRate: 0,
        filmNameImage: "",
        filmDescription: "",
      ),
      FilmModel(
        filmName: "",
        filmImage: Assets.pngs.myWonderfulUnhappiness.path,
        filmId: 9,
        filmRate: 0,
        filmNameImage: "",
        filmDescription: "",
      ),
    ];
  }
}
