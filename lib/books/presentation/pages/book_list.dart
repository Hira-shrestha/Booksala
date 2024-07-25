// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_store/auth/authentication/auth_state.dart';
import 'package:library_store/core/enums/genre.dart';
import 'package:library_store/addbook/presentation/pages/addbook.dart';
import 'package:library_store/books/book.dart';
import 'package:library_store/books/presentation/widgets/bookwidget.dart';
import 'package:library_store/books/presentation/widgets/enumdropdown.dart';
import 'package:library_store/books/presentation/cubit/book_list_cubit.dart';
import 'package:library_store/books/presentation/cubit/book_list_state.dart';
import 'package:library_store/core/common/searchBar.dart';
import 'package:library_store/core/enums/app_state.dart';

enum ListState { all, search, filter }

class BookListingScreen extends StatefulWidget {
  const BookListingScreen({super.key});

  @override
  State<BookListingScreen> createState() => _BookListingScreenState();
}

class _BookListingScreenState extends State<BookListingScreen> {
  TextEditingController searchController = TextEditingController();
  FocusNode searchFocusNode = FocusNode();

  ListState state = ListState.all;
  FilterValue filterValue =
      FilterValue(generList: [], minValue: 0, maxValue: 1000);

  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      searchItems().then((value) {
        setState(() {
          //
        });
      });
    });
  }

  Future<List<Book>> searchItems() async {
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookListCubit(),
      child: BlocListener<BookListCubit, BookListState>(
        listener: (context, state) {
          if (state.status == AppState.loading) {}
          if (state.status == AppState.success) {
            if (state.bookId != '') {
              context.read<BookListCubit>().deleteRefresh(state.bookId);
              context.read<BookListCubit>().resetState();
            }
          }
          if (state.status == AppState.failure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text(state.errorDescription)),
              );
            Future.delayed(const Duration(seconds: 3), () {
              context.read<BookListCubit>().resetState();
            });
          }
          // TODO: implement listener
        },
        listenWhen: (previous, current) =>
            previous.status != current.status ||
            previous.books != current.books,
        child: BlocBuilder<BookListCubit, BookListState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text("All Books"),
                centerTitle: false,
              ),
              body: (state.books?.data == null)
                  ? const Center(
                      child: Text('No books available'),
                    )
                  : Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 4.0),
                        child: Searchbar(
                          onChanged: (val) =>
                              {context.read<BookListCubit>().searchBook(val)},
                          openFilter: () {
                            filterPage(
                              context,
                              state.genreList.isEmpty ? false : true,
                              (genrelist) {
                                // this.genrelist = genrelist;
                                context
                                    .read<BookListCubit>()
                                    .updatedGenerlist(genrelist);
                                context
                                    .read<BookListCubit>()
                                    .filterBooks(genrelist);
                              },
                            );
                          },
                        ),
                      ),
                      state.genreList.isEmpty != true
                          ? ElevatedButton(
                              onPressed: () {
                                context
                                    .read<BookListCubit>()
                                    .updatedGenerlist([]);
                                context.read<BookListCubit>().getAllBooksList();
                              },
                              child: Text("Clear filter"))
                          : SizedBox(),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: RefreshIndicator(
                            onRefresh: () async {
                              context.read<BookListCubit>().getAllBooksList();
                            },
                            child: ListView.builder(
                              itemCount: state.books?.data.length,
                              itemBuilder: (context, index) {
                                final newbook = state.books?.data[index];
                                return ScreenUtilInit(
                                  child: newbook != null
                                      ? BookWidget(
                                          book: newbook,
                                          onDelete: () {
                                            context
                                                .read<BookListCubit>()
                                                .deleteBook(newbook.bookId);
                                          },
                                          onEdit: () =>
                                              _editItem(newbook, context),
                                        )
                                      : Placeholder(),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ]),
            );
          },
        ),
      ),
    );
  }

  void filterPage(
      BuildContext context, bool selectedGenre, Function(List<Genre>) onApply) {
    FilterValue initialFilterValue = selectedGenre
        ? filterValue
        : FilterValue(generList: [], minValue: 0, maxValue: 1000);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EnumDropdown(
          onApply: (genreList) {
            // Updating the parent state with the new genre list
            setState(() {
              filterValue.generList = genreList;
            });
            onApply(genreList);
          },
          filterValue: initialFilterValue,
        ),
      ),
    );
  }

  void _editItem(Book book, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => AddBook(
                book: book,
                pageTitle: 'Update',
              )),
    );
  }
}
