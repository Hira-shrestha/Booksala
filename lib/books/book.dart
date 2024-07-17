class Book {
  String bookId;
  String bookName;
  DateTime publishedDate;
  String description;
  double price;
  String genre;
  DateTime createdAt;
  DateTime updatedAt;

  Book({
    required this.bookId,
    required this.bookName,
    required this.publishedDate,
    required this.description,
    required this.price,
    required this.genre,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        bookId: json["bookId"],
        bookName: json["bookName"],
        publishedDate: DateTime.parse(json["publishedDate"]),
        description: json["description"],
        price: json["price"]?.toDouble(),
        genre: json["genre"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "bookId": bookId,
        "bookName": bookName,
        "publishedDate":
            "${publishedDate.year.toString().padLeft(4, '0')}-${publishedDate.month.toString().padLeft(2, '0')}-${publishedDate.day.toString().padLeft(2, '0')}",
        "description": description,
        "price": price,
        "genre": genre,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
