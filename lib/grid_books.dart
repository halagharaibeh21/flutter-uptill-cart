import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:myapp/book.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/bookimages.dart';
import 'package:myapp/book_G_E.dart';

class grid_books extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Box<book> bookBox = Hive.box<book>('mybook'); // Access Hive box

    return GridView.count(
      crossAxisCount: 2, 
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      padding: EdgeInsets.all(10),
      children: [
        //**********the first book**********
    Container(
     width: 110,
     height: 160,
     child: PrideandPrejudice(),
     decoration: BoxDecoration( //for the conatiner 
      color: Colors.white,
      border: Border.all(color: Color.fromARGB(255, 124, 142, 197), width: 3), // Correct syntax
      borderRadius: BorderRadius.circular(10),
                               ),
             ),
      Container(
     width: 100,
     height: 160,
     child: MobyDick(),
     decoration: BoxDecoration( //for the conatiner 
      color: Colors.white,
      border: Border.all(color: Color.fromARGB(255, 124, 142, 197), width: 3), // Correct syntax
      borderRadius: BorderRadius.circular(10),
                               ),
             ),
          Container(
     width: 100,
     height: 150,
     child: Frankenstein(),
     decoration: BoxDecoration( //for the conatiner 
      color: Colors.white,
      border: Border.all(color: Color.fromARGB(255, 124, 142, 197), width: 3), // Correct syntax
      borderRadius: BorderRadius.circular(10),
                               ),
             ),
      Container(
     width: 100,
     height: 150,
     child: TheGreatGatsby(),
     decoration: BoxDecoration( //for the conatiner 
      color: Colors.white,
      border: Border.all(color: Color.fromARGB(255, 124, 142, 197), width: 3), // Correct syntax
      borderRadius: BorderRadius.circular(10),
                               ),
             ),
             Container(
     width: 100,
     height: 150,
     child: AliceInWonderland(),
     decoration: BoxDecoration( //for the conatiner 
      color: Colors.white,
      border: Border.all(color: Color.fromARGB(255, 124, 142, 197), width: 3), // Correct syntax
      borderRadius: BorderRadius.circular(10),
                               ),
             ),
      Container(
     width: 100,
     height: 150,
     child: WarAndPeace(),
     decoration: BoxDecoration( //for the conatiner 
      color: Colors.white,
      border: Border.all(color: Color.fromARGB(255, 124, 142, 197), width: 3), // Correct syntax
      borderRadius: BorderRadius.circular(10),
                               ),
             ),
],

    );
  }
}