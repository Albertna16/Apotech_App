class Comment {
  String name;
  String date;
  String rating;
  String message;

  Comment({
    required this.name,
    required this.date,
    required this.rating,
    required this.message,
  });
}

var commentList = [
  Comment(
    name: "Lorem Hoffman",
    date: "05 oct 2023",
    rating: "5",
    message:
        "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ",
  ),
  Comment(
    name: "Ben Ipsum",
    date: "09 oct 2023",
    rating: "4",
    message:
        "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ",
  ),
  Comment(
    name: "Lionel Messi",
    date: "15 oct 2023",
    rating: "5",
    message:
        "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ",
  ),
];
