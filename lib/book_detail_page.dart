import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:myapp/book.dart';

class BookDetailPage extends StatelessWidget {
  final String bookKey;

  BookDetailPage({required this.bookKey});

  @override
  Widget build(BuildContext context) {
    final Box<book> bookBox = Hive.box<book>('mybook');
    final book selectedBook = bookBox.get(bookKey)!;

    String bookImage = "";
    if (selectedBook.book_name == 'Pride and Prejudice') {
      bookImage =
          "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781524861759/pride-and-prejudice-9781524861759_hr.jpg";
    } else if (selectedBook.book_name == 'Moby-Dick') {
      bookImage =
          "https://img1.od-cdn.com/ImageType-400/2389-1/D9A/6D7/6C/%7BD9A6D76C-D2A8-458A-9B14-4E021A8C058D%7DImg400.jpg";
    } else if (selectedBook.book_name == 'Frankenstein') {
      bookImage =
          "https://d28hgpri8am2if.cloudfront.net/book_images/cvr9780743487580_9780743487580_hr.jpg";
    } else if (selectedBook.book_name == 'The Great Gatsby') {
      bookImage =
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOEn4LPR4rdnfpbwk5NfzCj5e6K8IGvkNUrg&s";
    } else if (selectedBook.book_name == 'Alice’s Adventures in Wonderland') {
      bookImage =
          "https://ik.imagekit.io/panmac/tr:di-placeholder_portrait_aMjPtD9YZ.jpg,tr:w-350,f-jpg,pr-true/edition/9781447279990.jpg";
    } else if (selectedBook.book_name == 'War and Peace') {
      bookImage =
          "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1686602284i/177106015.jpg";
    } else {
      bookImage = "https://via.placeholder.com/150";
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 124, 142, 197),
        title: Text(
          selectedBook.book_name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 124, 142, 197),
                    width: 4,
                  ),
                ),
                child: Image.network(
                  bookImage,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                selectedBook.book_name,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "By: ${selectedBook.book_author}",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Genre: ${selectedBook.genre}",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 10),
              Text(
                selectedBook.book_description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Price: \$${selectedBook.price}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green[700],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Added to cart!")),
                  );
           final Box<book> cartBox = Hive.box<book>('cart');
           if (!cartBox.containsKey(selectedBook.book_name)) {
            cartBox.put(selectedBook.book_name, selectedBook);
                                                             }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 124, 142, 197),
                ),
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}