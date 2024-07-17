import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:library_store/books/addbookviewmodel.dart';
import 'package:library_store/books/book.dart';
import 'package:library_store/books/bottomsheet.dart';
import 'package:library_store/books/genre.dart';

class AddBook extends StatefulWidget {
  const AddBook({this.book, super.key});

  final Book? book;

  @override
  _AddBookState createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  final _formKey = GlobalKey<FormState>();
  AddbookViewModel addbookViewModel = AddbookViewModel();

  late final TextEditingController _bookNameController;
  late final TextEditingController _priceController;
  late final TextEditingController _authorNameController;
  late final TextEditingController _publishedDateController;

  late final TextEditingController _genreController;
  final FocusNode _generefocusNode = FocusNode();

  Genre? _selectedOption;
  DateTime? _selectedDate;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bookNameController = TextEditingController(text: widget.book?.bookName);
    _priceController =
        TextEditingController(text: widget.book?.price.toString());
    _authorNameController = TextEditingController(text: widget.book?.genre);
    _publishedDateController =
        TextEditingController(text: widget.book?.publishedDate.toString());
    _genreController =
        TextEditingController(text: widget.book?.genre.toString());
  }

  @override
  void dispose() {
    _bookNameController.dispose();
    _priceController.dispose();
    _authorNameController.dispose();
    _publishedDateController.dispose();
    _genreController.dispose();
    super.dispose();
  }

  void _selectOption(Genre option) {
    setState(() {
      _selectedOption = option;
      _genreController.text = option.toString().split('.').last;
    });
    // Remove focus from the TextFie
  }

  void _onFocusChange() {
    showOptionsBottomSheet(context, _selectOption);
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      // Retrieve values from the controllers
      String bookName = _bookNameController.text;
      String price = _priceController.text;
      String authorName = _authorNameController.text;
      String publishedDate = _publishedDateController.text;

      if (widget.book != null) {
        //   Book book = widget.book!;
        //   book.name = bookName;
        //   book.price = double.tryParse(price) ?? 0.0;
        //   book.author = authorName;
        //   book.publishedDate = _selectedDate ?? DateTime.now();
        //   book.genre = _selectedOption;
        //   addbookViewModel.updateBook(book);
        // } else {
        //   Book book = Book(
        //     name: bookName,
        //     price: double.tryParse(price) ?? 0.0,
        //     author: authorName,
        //     publishedDate: _selectedDate ?? DateTime.now(),
        //     genre: _selectedOption,
        //   );
        //   addbookViewModel.addBook(book);
      }
      //
      // You can also navigate back or show a confirmation message
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Book'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: _bookNameController,
                decoration: const InputDecoration(labelText: 'Book Name'),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a book name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(labelText: 'Price'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a price';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _authorNameController,
                decoration: const InputDecoration(labelText: 'Author Name'),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter an author name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _publishedDateController,
                onTap: () => _selectDate(context),
                readOnly: true,
                decoration: const InputDecoration(labelText: 'Published Date'),
                keyboardType: TextInputType.datetime,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a published date';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _genreController,
                onTap: () {
                  _onFocusChange();
                },
                decoration: const InputDecoration(
                  labelText: 'Tap to select genre',
                ),
                readOnly: true,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a Genre';
                  }
                  return null;
                }, // Make the TextField read-only
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      _selectedDate = picked;
      _publishedDateController.text = DateFormat('yyyy-MM-dd').format(picked);
      setState() {}
    }
  }
}
