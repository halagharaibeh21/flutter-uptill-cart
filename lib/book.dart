import 'package:hive/hive.dart';

part 'book.g.dart';

@HiveType(typeId: 1)
class book {
  book({
    required this.book_name,
    required this.book_description,
    required this.price,
    required this.book_author,
    required this.genre,
  });

  @HiveField(0)
  String book_name;

  @HiveField(1)
  String book_description;

  @HiveField(2)
  int price;

  @HiveField(3)
  String book_author;

  @HiveField(4)
  String genre;
}