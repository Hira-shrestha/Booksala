import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_store/feature/addbook/presentation/pages/addbook.dart';
import 'package:library_store/feature/books/book.dart';
import 'package:library_store/feature/books/presentation/widgets/bookwidget.dart';
import 'package:library_store/core/common/searchBar.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/enums/screenType.dart';
import 'package:library_store/core/models/book_list_model.dart';
import 'package:library_store/feature/mybooks/presentation/cubit/my_books_cubit.dart';
import 'package:library_store/feature/mybooks/presentation/cubit/my_books_state.dart';

class MyBooksScreen extends StatelessWidget {
  const MyBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyBooksCubit(),
      child: BlocListener<MyBooksCubit, MyBooksState>(
        listener: (context, state) {
          if (state.status == AppState.failure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text(state.error)),
              );
            Future.delayed(const Duration(seconds: 2), () {
              context.read<MyBooksCubit>().resetState();
            });
          }

          if (state.status == AppState.success) {
            context.read<MyBooksCubit>().resetState();
          }
          // TODO: implement listener
        },
        listenWhen: (previous, current) =>
            previous.status != current.status ||
            previous.books != current.books,
        child: BlocBuilder<MyBooksCubit, MyBooksState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("My Books"),
                centerTitle: false,
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Searchbar(
                              onChanged: (searchText) {
                                context
                                    .read<MyBooksCubit>()
                                    .searchBook(searchText);
                              },
                              showFilterIcon: false,
                            ),
                          ),
                        ),
                        // In MyBooksScreen
                        IconButton(
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(
                            Icons.add_box,
                            color: Color(0xFF3F5AA6),
                            size: 50,
                          ),
                          onPressed: () async {
                            final newBook = await Navigator.push<Book>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddBook(),
                              ),
                            );

                            if (newBook != null) {
                              final currentBookList =
                                  List<Book>.from(state.books?.data ?? []);
                              currentBookList.add(newBook);
                              currentBookList.reversed;

                              final updatedBooks = BookList(
                                status: 0,
                                message: '',
                                page: 1,
                                total: 20,
                                data: currentBookList,
                              );

                              context
                                  .read<MyBooksCubit>()
                                  .updateMyBook(updatedBooks);
                            }
                          },
                        )
                      ],
                    ),
                    if (state.books != null) ...[
                      Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async {
                            context.read<MyBooksCubit>().getMyBooks();
                          },
                          child: ListView.builder(
                            itemCount: state.books!.data.length,
                            itemBuilder: (context, index) => BookWidget(
                              book: state.books!.data[index],
                              name: ScreenType.myBooks,
                              onDelete: () {
                                context.read<MyBooksCubit>().deleteBook(
                                    state.books!.data[index].bookId);
                              },
                              onEdit: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddBook(
                                            book: state.books!.data[index],
                                            pageTitle: 'Update',
                                          )),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
