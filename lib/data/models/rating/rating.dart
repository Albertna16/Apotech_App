class Rating {
  String rating;
  int percentActive;

  Rating({
    required this.rating,
    required this.percentActive,
  });
}

var ratingList = [
  Rating(rating: "5", percentActive: 78),
  Rating(rating: "4", percentActive: 12),
  Rating(rating: "3", percentActive: 7),
  Rating(rating: "2", percentActive: 2),
  Rating(rating: "1", percentActive: 1),
];