import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/book.dart';
import 'package:myapp/grid_books.dart';
import 'package:myapp/CartPage.dart';

late Box<book> bookBox;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(bookAdapter()); // Ensure bookAdapter is generated
  await Hive.openBox<book>('mybook');
  await Hive.openBox<book>('cart');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Store',
      home: ScaffoldWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScaffoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(201, 214, 255, 1),
      body: grid_books(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 124, 142, 197),
        title: Text(
          "Book Store",
          style: TextStyle(fontSize: 24),
        ),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined, color: const Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPagedesign()),
              );
            },
          ),
        ],
      ),
    );
  }
}
