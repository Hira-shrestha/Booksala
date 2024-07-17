import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_store/books/book.dart';

class BookWidget extends StatelessWidget {
  const BookWidget(this.book, this.onDelete, this.onEdit, {super.key});
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  final Book book;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0), // Margin around each card
      elevation: 5.0,
      child: Container(
        //   width: ScreenUtil().screenWidth * 0.9,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/book_cover.jpg',
              height: 80,
              width: 50,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 20),
            Expanded(child: TopDownTextWidget(book)),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: onEdit,
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TopDownTextWidget extends StatelessWidget {
  TopDownTextWidget(this.book, {super.key});
  Book book;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          book.bookName,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold, // Make the text bold
            color: Colors.black, // Set the font size here
          ),
        ),
        Text(
          book.genre,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal, // Make the text bold
            color: Colors.blue, // Set the font size here
          ),
        ),
        Row(
          children: [
            Text(
              "\$${book.price.toString()}",
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal, // Make the text bold
                color: Colors.blue, // Set the font size here
              ),
            ),
            const SizedBox(width: 8),
            Container(
              child: SizedBox(
                width: 0.29.sw,
                child: Text(
                  "Genre: ${book.genre.toString().split(".").last}",
                  overflow:
                      TextOverflow.ellipsis, // Truncate text with ellipsis
                  maxLines: 1,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal, // Make the text bold
                    color: Colors.blue, // Set the font size here
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
