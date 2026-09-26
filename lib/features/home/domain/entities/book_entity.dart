class BookEntity {
  final String bookID;
  final String? image;
  final String tittle;
  final String? authorName;
  final num? price;
  final String? rating;

  BookEntity({
    required this.bookID,
    required this.image,
    required this.tittle,
    required this.authorName,
    required this.price,
    required this.rating
});
}