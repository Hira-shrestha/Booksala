class CreateBook {
  String bookName;
  String publishedDate;
  String description;
  String image;
  String genre;
  String price;

  CreateBook({
    required this.bookName,
    required this.publishedDate,
    required this.description,
    required this.genre,
    this.image =
        '//images.ctfassets.net/yadj1kx9rmg0/wtrHxeu3zEoEce2MokCSi/cf6f68efdcf625fdc060607df0f3baef/quwowooybuqbl6ntboz3.jpg',
    required this.price,
  });
}
