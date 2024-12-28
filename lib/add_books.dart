import 'package:hive/hive.dart';
import 'package:myapp/book.dart'; 

void addBooksToBox(Box<book> bookBox) {
  bookBox.put(
    'K_PrideAndPrejudice',
    book(
      book_name: 'Pride and Prejudice',
      book_description: 'A classic novel about love and societal expectations.',
      price: 200,
      book_author: 'Jane Austen',
      genre: "Classic Fiction",
    ),
  );

  bookBox.put(
    'K_MobyDick',
    book(
      book_name: 'Moby-Dick',
      book_description:
          'The story of Captain Ahab’s quest for revenge against the white whale.',
      price: 250,
      book_author: 'Herman Melville',
      genre: "Adventure", 
    ),
  );

  bookBox.put(
    'K_Frankenstein',
    book(
      book_name: 'Frankenstein',
      book_description:
          'A tale of a scientist who creates life and faces unforeseen consequences.',
      price: 180,
      book_author: 'Mary Shelley',
      genre: "Horror", 
    ),
  );

  bookBox.put(
    'K_WarAndPeace',
    book(
      book_name: 'War and Peace',
      book_description:
          'An epic novel about Russian society during the Napoleonic wars.',
      price: 300,
      book_author: 'Leo Tolstoy',
      genre: "Historical Fiction", 
    ),
  );

  bookBox.put(
    'K_TheGreatGatsby',
    book(
      book_name: 'The Great Gatsby',
      book_description:
          'A tragic story of love, wealth, and the American dream.',
      price: 220,
      book_author: 'F. Scott Fitzgerald',
      genre: "Modern Classic", 
    ),
  );

  bookBox.put(
    'K_AliceInWonderland',
    book(
      book_name: 'Alice’s Adventures in Wonderland',
      book_description:
          'A whimsical story about a girl who falls down a rabbit hole.',
      price: 150,
      book_author: 'Lewis Carroll',
      genre: "Fantasy", 
    ),
  );
}