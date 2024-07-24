import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_store/books/book.dart';
import 'package:library_store/gen/assets.gen.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    required this.book,
    required this.onDelete,
    required this.onEdit,
    super.key,
  });

  final VoidCallback onDelete;
  final VoidCallback onEdit;
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      elevation: 5.0,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              Assets.images.bookCover.path,
              height: 80,
              width: 50,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16), // Adjusted spacing
            Expanded(child: TopDownTextWidget(book)),
            IconButton(
              icon: const Icon(Icons.edit, size: 20),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: onEdit,
            ),
            IconButton(
              icon: const Icon(Icons.delete, size: 20),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
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
  const TopDownTextWidget(this.book, {super.key});

  final Book book;

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
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          book.genre,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: Colors.blue,
          ),
        ),
        Row(
          children: [
            Text(
              "\$${book.price.toString()}",
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.blue,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                "Genre: ${book.genre}",
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
