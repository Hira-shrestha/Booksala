import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:library_store/addbook/presentation/cubit/addbook_cubit.dart';
import 'package:library_store/addbook/presentation/cubit/addbook_state.dart';
import 'package:library_store/books/book.dart';
import 'package:library_store/books/bottomsheet.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/enums/genre.dart';
import 'package:library_store/core/models/book_list_model.dart';
import 'package:library_store/core/models/createbook_model.dart';

class AddBook extends StatefulWidget {
  AddBook({this.book, super.key, this.pageTitle});

  final Book? book;
  late String? pageTitle;

  @override
  _AddBookState createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _bookNameController;
  late final TextEditingController _priceController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _publishedDateController;

  late final TextEditingController _genreController;
  // final FocusNode _generefocusNode = FocusNode();

  Genre? _selectedOption;
  DateTime? _selectedDate;

  late final String title;
  late final CreateBook book;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bookNameController =
        TextEditingController(text: widget.book?.bookName ?? '');
    _priceController =
        TextEditingController(text: widget.book?.price.toString() ?? '');
    _descriptionController =
        TextEditingController(text: widget.book?.genre ?? '');
    _publishedDateController = TextEditingController(
        text: widget.book?.publishedDate.toString() ?? '');
    _genreController =
        TextEditingController(text: widget.book?.genre.toString() ?? '');

    title = widget.pageTitle ?? "Add";

    // Initialize book here
    if (widget.book == null) {
      book = CreateBook(
        bookName: _bookNameController.text,
        publishedDate: _publishedDateController.text,
        description: _descriptionController.text,
        genre: _genreController.text,
        price: _priceController.text,
      );
    }
    if (widget.book != null) {
      book = CreateBook(
          bookName: widget.book?.bookName ?? "",
          publishedDate: widget.book?.publishedDate ?? "",
          description: widget.book?.description ?? "",
          genre: widget.book?.genre ?? '',
          price: widget.book?.price.toString() ?? '');
    }
  }

  @override
  void dispose() {
    _bookNameController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
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
      // String bookName = _bookNameController.text;
      // String price = _priceController.text;
      // String authorName = _descriptionController.text;
      // String publishedDate = _publishedDateController.text;
      book.bookName = _bookNameController.text;
      book.description = _descriptionController.text;
      book.genre = _genreController.text;
      book.price = _priceController.text;
      book.publishedDate = _publishedDateController.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddbookCubit(),
      child: BlocListener<AddbookCubit, AddbookState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state.status == AppState.success) {
            if (state.newbook != null) {
              // widget.onAddedBook!(state.newbook!);
              Navigator.pop(context, state.newbook!);
            }
            if (widget.pageTitle == "Update") {
              Navigator.pop(context);
            }
          }
        },
        listenWhen: (previous, current) => previous.status != current.status,
        child: BlocBuilder<AddbookCubit, AddbookState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text('$title Book'),
              ),
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: <Widget>[
                      TextFormField(
                        controller: _bookNameController,
                        // decoration: const InputDecoration(labelText: 'Book Name'),
                        decoration: const InputDecoration(
                          labelText: "Book Name",
                          border: OutlineInputBorder(),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Please enter a book name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _priceController,
                        decoration: const InputDecoration(
                          labelText: "price",
                          border: OutlineInputBorder(),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Please enter a price';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _descriptionController,
                        decoration: const InputDecoration(
                          labelText: "Description",
                          border: OutlineInputBorder(),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                        onChanged: (value) => {print(value)},
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Please enter an book description';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _publishedDateController,
                        onTap: () => _selectDate(context),
                        readOnly: true,
                        decoration: const InputDecoration(
                            labelText: "Published Date",
                            border: OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            suffixIcon: Icon(Icons.calendar_month)),
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
                            labelText: "Genre",
                            border: OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            suffixIcon: Icon(Icons.arrow_drop_down)),
                        readOnly: true,
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Please enter a Genre';
                          }
                          return null;
                        }, // Make the TextField read-only
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF3F5AA6), // Text color
                        ),
                        onPressed: () {
                          _submitForm();
                          if (widget.book != null) {
                            context
                                .read<AddbookCubit>()
                                .updateBook(widget.book!.bookId, book);
                          }
                          if (widget.book == null) {
                            context.read<AddbookCubit>().addBook(book);
                            // if (state.createdBook != null) {
                            //   widget.onAddedBook!(state.createdBook!);
                            // }
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
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
    }
  }
}
