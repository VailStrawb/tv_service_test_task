class FilmModel {
  FilmModel({
    required this.filmNameImage,
    required this.filmName,
    required this.filmImage,
    required this.filmId,
    required this.filmRate,
    required this.filmDescription,
  });

  final int filmId;
  final String filmName;
  final String filmNameImage;
  final String filmImage;
  final double filmRate;
  final String filmDescription;
}
