import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_service_test_task/features/home/domain/models/film_model.dart';
import 'package:tv_service_test_task/features/home/domain/repositories/film_repository.dart';

part 'films_bloc.freezed.dart';

sealed class FilmsEvent {}

class LoadFilmsEvent extends FilmsEvent {}

@freezed
class FilmsState with _$FilmsState {
  const factory FilmsState.initial() = _InitialState;
  const factory FilmsState.loading() = _LoadingState;
  const factory FilmsState.loaded({
    required FilmModel newFilm,
    required List<FilmModel> topFilms,
    required List<FilmModel> comedyFilms,
  }) = _LoadedState;
  const factory FilmsState.error() = _ErrorState;
}

class FilmsBloc extends Bloc<FilmsEvent, FilmsState> {
  FilmsBloc(this.filmRepository) : super(const FilmsState.initial()) {
    on<LoadFilmsEvent>((event, emit) async {
      emit(const FilmsState.loading());
      try {
        final newFilm = await filmRepository.fetchNewFilm();
        final topFilms = await filmRepository.fetchTopFilms();
        final comedyFilms = await filmRepository.fetchComedyFilms();
        final loadedState = FilmsState.loaded(
          newFilm: newFilm,
          topFilms: topFilms,
          comedyFilms: comedyFilms,
        );

        emit(loadedState);
      } catch (e) {
        debugPrint("Got an erroe $e");
        emit(const FilmsState.error());
      }
    });
  }

  final FilmRepository filmRepository;
}
