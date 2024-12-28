import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/book.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPagedesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Color.fromARGB(255, 124, 142, 197),
        centerTitle: true,
      ),
      body: CartListView(),
    );
  }
}

class CartListView extends StatefulWidget {
  @override
  _CartListViewState createState() => _CartListViewState();
}

class _CartListViewState extends State<CartListView> {
  @override
  Widget build(BuildContext context) {
    final Box<book> cartBox = Hive.box<book>('cart');

    return ListView.builder(
      itemCount: cartBox.length,
      itemBuilder: (context, index) {
        // Retrieve book from cart
        book cartBook = cartBox.getAt(index)!;

        // Determine the book image dynamically
        String bookImage = "";
        if (cartBook.book_name == 'Pride and Prejudice') {
          bookImage =
              "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781524861759/pride-and-prejudice-9781524861759_hr.jpg";
        } else if (cartBook.book_name == 'Moby-Dick') {
          bookImage =
              "https://img1.od-cdn.com/ImageType-400/2389-1/D9A/6D7/6C/%7BD9A6D76C-D2A8-458A-9B14-4E021A8C058D%7DImg400.jpg";
        } else if (cartBook.book_name == 'Frankenstein') {
          bookImage =
              "https://d28hgpri8am2if.cloudfront.net/book_images/cvr9780743487580_9780743487580_hr.jpg";
        } else if (cartBook.book_name == 'The Great Gatsby') {
          bookImage =
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOEn4LPR4rdnfpbwk5NfzCj5e6K8IGvkNUrg&s";
        } else if (cartBook.book_name == 'Alice’s Adventures in Wonderland') {
          bookImage =
              "https://ik.imagekit.io/panmac/tr:di-placeholder_portrait_aMjPtD9YZ.jpg,tr:w-350,f-jpg,pr-true/edition/9781447279990.jpg";
        } else if (cartBook.book_name == 'War and Peace') {
          bookImage =
              "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1686602284i/177106015.jpg";
        } else {
          bookImage = "https://via.placeholder.com/150"; // Default image
        }

        return Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromARGB(255, 101, 125, 198), width: 2.5),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListTile(
            tileColor: Color.fromARGB(255, 184, 195, 232),
            leading: Container(
              width: 33,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 101, 125, 198), width: .9),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.network(
                bookImage,
                fit: BoxFit.fitHeight,
              ),
            ),
            title: Text(
              cartBook.book_name,
              style: GoogleFonts.oswald(
                color: const Color.fromARGB(255, 45, 41, 41),
                fontSize: 15,
              ),
            ),
            subtitle: Text(
              "\$${cartBook.price}",
              style: GoogleFonts.oswald(
                color: const Color.fromARGB(255, 45, 41, 41),
                fontSize: 15,
              ),
            ),
            trailing: IconButton(
              icon:
                  Icon(Icons.delete, color: Color.fromARGB(255, 101, 125, 198)),
              onPressed: () {
                setState(() {
                  cartBox.deleteAt(index);
                });
              },
            ),
            onTap: () {},
          ),
        );
      },
    );
  }
}
