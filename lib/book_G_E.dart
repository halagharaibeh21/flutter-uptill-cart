import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/book.dart';
import 'package:myapp/bookimages.dart';
import 'package:myapp/book_detail_page.dart';
import 'package:myapp/CartPage.dart';

late Box<book> cartBox;

class PrideandPrejudice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Box<book> bookBox = Hive.box<book>('mybook');
    return Column(
      children: [
        PrideandPrejudice_pic(),
        Text(
          bookBox.get('K_PrideAndPrejudice')!.genre +
              " - " +
              bookBox.get('K_PrideAndPrejudice')!.price.toString() +
              "\$",
          style: GoogleFonts.oswald(
            color: const Color.fromARGB(255, 45, 41, 41),
            fontSize: 12,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        BookDetailPage(bookKey: 'K_PrideAndPrejudice'),
                  ),
                );
              },
              child: Text('More', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 10),
                backgroundColor: Color.fromARGB(255, 124, 142, 197),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                minimumSize: Size(0, 0),
              ),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              onPressed: () {
                final Box<book> cartBox = Hive.box<book>('cart');
                final Box<book> bookBox = Hive.box<book>('mybook');
                final book selectedBook = bookBox.get('K_PrideAndPrejudice')!;
                if (!cartBox.containsKey(selectedBook.book_name)) {
                  cartBox.put(selectedBook.book_name, selectedBook);
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${selectedBook.book_name} added to cart!'),
                  ),
                );
              },
              child: Text('Buy', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 10),
                backgroundColor: Color.fromARGB(255, 124, 142, 197),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                minimumSize: Size(0, 0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MobyDick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Box<book> bookBox = Hive.box<book>('mybook');
    return Column(
      children: [
        MobyDick_pic(),
        Text(
          bookBox.get('K_MobyDick')!.genre +
              " - " +
              bookBox.get('K_MobyDick')!.price.toString() +
              "\$",
          style: GoogleFonts.oswald(
            color: const Color.fromARGB(255, 45, 41, 41),
            fontSize: 12,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookDetailPage(bookKey: 'K_MobyDick'),
                  ),
                );
              },
              child: Text('More', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 10),
                backgroundColor: Color.fromARGB(255, 124, 142, 197),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                minimumSize: Size(0, 0),
              ),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              onPressed: () {
                final Box<book> cartBox = Hive.box<book>('cart');
                final Box<book> bookBox = Hive.box<book>('mybook');
                final book selectedBook = bookBox.get('K_MobyDick')!;
                if (!cartBox.containsKey(selectedBook.book_name)) {
                  cartBox.put(selectedBook.book_name, selectedBook);
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${selectedBook.book_name} added to cart!'),
                  ),
                );
              },
              child: Text('Buy', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 10),
                backgroundColor: Color.fromARGB(255, 124, 142, 197),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                minimumSize: Size(0, 0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Frankenstein extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Box<book> bookBox = Hive.box<book>('mybook');
    return Column(
      children: [
        Frankenstein_pic(),
        Text(
          bookBox.get('K_Frankenstein')!.genre +
              " - " +
              bookBox.get('K_Frankenstein')!.price.toString() +
              "\$",
          style: GoogleFonts.oswald(
            color: const Color.fromARGB(255, 45, 41, 41),
            fontSize: 12,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        BookDetailPage(bookKey: 'K_Frankenstein'),
                  ),
                );
              },
              child: Text('More', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 10),
                backgroundColor: Color.fromARGB(255, 124, 142, 197),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                minimumSize: Size(0, 0),
              ),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              onPressed: () {
                final Box<book> cartBox = Hive.box<book>('cart');
                final Box<book> bookBox = Hive.box<book>('mybook');
                final book selectedBook = bookBox.get('K_Frankenstein')!;
                if (!cartBox.containsKey(selectedBook.book_name)) {
                  cartBox.put(selectedBook.book_name, selectedBook);
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${selectedBook.book_name} added to cart!'),
                  ),
                );
              },
              child: Text('Buy', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 10),
                backgroundColor: Color.fromARGB(255, 124, 142, 197),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                minimumSize: Size(0, 0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TheGreatGatsby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Box<book> bookBox = Hive.box<book>('mybook');
    return Column(
      children: [
        TheGreatGatsby_pic(),
        Text(
          bookBox.get('K_TheGreatGatsby')!.genre +
              " - " +
              bookBox.get('K_TheGreatGatsby')!.price.toString() +
              "\$",
          style: GoogleFonts.oswald(
            color: const Color.fromARGB(255, 45, 41, 41),
            fontSize: 12,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        BookDetailPage(bookKey: 'K_TheGreatGatsby'),
                  ),
                );
              },
              child: Text('More', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 10),
                backgroundColor: Color.fromARGB(255, 124, 142, 197),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                minimumSize: Size(0, 0),
              ),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              onPressed: () {
                final Box<book> cartBox = Hive.box<book>('cart');
                final Box<book> bookBox = Hive.box<book>('mybook');
                final book selectedBook = bookBox.get('K_TheGreatGatsby')!;
                if (!cartBox.containsKey(selectedBook.book_name)) {
                  cartBox.put(selectedBook.book_name, selectedBook);
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${selectedBook.book_name} added to cart!'),
                  ),
                );
              },
              child: Text('Buy', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 10),
                backgroundColor: Color.fromARGB(255, 124, 142, 197),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                minimumSize: Size(0, 0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AliceInWonderland extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Box<book> bookBox = Hive.box<book>('mybook');
    return Column(
      children: [
        AliceInWonderland_pic(),
        Text(
          bookBox.get('K_AliceInWonderland')!.genre +
              " - " +
              bookBox.get('K_AliceInWonderland')!.price.toString() +
              "\$",
          style: GoogleFonts.oswald(
            color: const Color.fromARGB(255, 45, 41, 41),
            fontSize: 12,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        BookDetailPage(bookKey: 'K_AliceInWonderland'),
                  ),
                );
              },
              child: Text('More', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 10),
                backgroundColor: Color.fromARGB(255, 124, 142, 197),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                minimumSize: Size(0, 0),
              ),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              onPressed: () {
                final Box<book> cartBox = Hive.box<book>('cart');
                final Box<book> bookBox = Hive.box<book>('mybook');
                final book selectedBook = bookBox.get('K_AliceInWonderland')!;
                if (!cartBox.containsKey(selectedBook.book_name)) {
                  cartBox.put(selectedBook.book_name, selectedBook);
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${selectedBook.book_name} added to cart!'),
                  ),
                );
              },
              child: Text('Buy', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 10),
                backgroundColor: Color.fromARGB(255, 124, 142, 197),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                minimumSize: Size(0, 0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class WarAndPeace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Box<book> bookBox = Hive.box<book>('mybook');
    return Column(
      children: [
        WarAndPeace_pic(),
        Text(
          bookBox.get('K_WarAndPeace')!.genre +
              " - " +
              bookBox.get('K_WarAndPeace')!.price.toString() +
              "\$",
          style: GoogleFonts.oswald(
            color: const Color.fromARGB(255, 45, 41, 41),
            fontSize: 13,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        BookDetailPage(bookKey: 'K_WarAndPeace'),
                  ),
                );
              },
              child: Text('More', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 10),
                backgroundColor: Color.fromARGB(255, 124, 142, 197),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                minimumSize: Size(0, 0),
              ),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              onPressed: () {
                final Box<book> cartBox = Hive.box<book>('cart');
                final Box<book> bookBox = Hive.box<book>('mybook');
                final book selectedBook = bookBox.get('K_WarAndPeace')!;
                if (!cartBox.containsKey(selectedBook.book_name)) {
                  cartBox.put(selectedBook.book_name, selectedBook);
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${selectedBook.book_name} added to cart!'),
                  ),
                );
              },
              child: Text('Buy', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 10),
                backgroundColor: Color.fromARGB(255, 124, 142, 197),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                minimumSize: Size(0, 0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
