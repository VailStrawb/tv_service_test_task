import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_service_test_task/core/presentation/theme/app_colors.dart';
import 'package:tv_service_test_task/core/presentation/theme/app_fonts.dart';
import 'package:tv_service_test_task/features/home/application/bloc/films_bloc.dart';
import 'package:tv_service_test_task/features/home/infrastructure/repositories/mock_film_repository.dart';
import 'package:tv_service_test_task/features/home/presentation/film_card.dart';
import 'package:tv_service_test_task/features/home/presentation/new_film_preview.dart';
import 'package:tv_service_test_task/features/home/presentation/menu_line.dart';
import 'package:tv_service_test_task/gen/assets.gen.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> numbers = [
      Assets.pngs.numberOne.path,
      Assets.pngs.numberTwo.path,
      Assets.pngs.numberThree.path,
      Assets.pngs.numberThree.path,
      Assets.pngs.numberThree.path,
      Assets.pngs.numberThree.path,
    ];
    return BlocProvider(
      create: (context) =>
          FilmsBloc(MockFilmRepository())..add(LoadFilmsEvent()),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Assets.pngs.appLogo.image(
                      width: 144,
                      height: 50,
                    ),
                  ),
                ),
                const SizedBox(height: 93),
                const Padding(
                  padding: EdgeInsets.only(left: 55, top: 17),
                  child: MenuLine(),
                ),
              ],
            ),
            BlocBuilder<FilmsBloc, FilmsState>(
              builder: (context, state) {
                return state.map(
                  loading: (value) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (value) => const Center(
                    child: Text("error"),
                  ),
                  initial: (value) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (value) => Flexible(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width >= 1500
                                          ? 290
                                          : 90,
                                ),
                                child: NewFilmPreview(newFilm: value.newFilm),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 95),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width >= 1500
                                  ? 215
                                  : 0),
                          child: SizedBox(
                            height: 700,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                for (final film in value.comedyFilms)
                                  Padding(
                                    padding: const EdgeInsets.only(right: 44),
                                    child: FilmCard(
                                      text: film.filmName,
                                      image: film.filmImage,
                                      rate: film.filmRate,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 60),
                        Row(
                          children: [
                            Assets.pngs.topTen.image(width: 200, height: 67),
                            const SizedBox(width: 20),
                            const Text(
                              "просмотров за неделю",
                              style: AppFonts.normal40w700,
                            ),
                          ],
                        ),
                        const SizedBox(height: 33),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width >= 1500
                                  ? 215
                                  : 100),
                          child: SizedBox(
                            height: 900,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                for (final (i, film) in value.topFilms.indexed)
                                  Padding(
                                    padding: const EdgeInsets.only(right: 120),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          top: 100,
                                          child: SizedBox(
                                            width: 241,
                                            height: 392,
                                            child: Image.asset(numbers[i]),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 170),
                                          child: FilmCard(
                                            text: film.filmName,
                                            image: film.filmImage,
                                            rate: film.filmRate,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
