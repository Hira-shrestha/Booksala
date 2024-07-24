// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_store/core/enums/genre.dart';
import 'package:library_store/addbook/presentation/pages/addbook.dart';
import 'package:library_store/books/book.dart';
import 'package:library_store/books/presentation/widgets/bookwidget.dart';
import 'package:library_store/books/presentation/widgets/enumdropdown.dart';
import 'package:library_store/books/presentation/cubit/book_list_cubit.dart';
import 'package:library_store/books/presentation/cubit/book_list_state.dart';
import 'package:library_store/core/common/searchBar.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/createbook_model.dart';

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

  late List<Genre> genrelist = [];

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
          if (state.status == AppState.success) {}
          if (state.status == AppState.failure) {}
          // TODO: implement listener
        },
        listenWhen: (previous, current) =>
            previous.status != current.status &&
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
                        child:
                            //   TextField(
                            //     controller: searchController,
                            //     focusNode: searchFocusNode,
                            //     decoration: InputDecoration(
                            //       hintText: 'Search Book...',
                            //       prefixIcon: const Icon(Icons.search),
                            //       suffixIcon: IconButton(
                            //         icon: Icon(
                            //           Icons.filter_list,
                            //           // ignore: unrelated_type_equality_checks
                            //           color: state == ListState.filter
                            //               ? Colors.blue
                            //               : Colors.grey,
                            //         ),
                            //         onPressed: () {
                            //           // Add your filter action here
                            //           filterPage(context);
                            //         },
                            //       ),
                            //       border: const OutlineInputBorder(
                            //         borderRadius:
                            //             BorderRadius.all(Radius.circular(10.0)),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Searchbar(
                          onChanged: (val) =>
                              {context.read<BookListCubit>().searchBook(val)},
                          openFilter: () {
                            filterPage(
                              context,
                              (genrelist) {
                                this.genrelist = genrelist;
                                context
                                    .read<BookListCubit>()
                                    .filterBooks(genrelist);
                              },
                            );
                          },
                        ),
                      ),
                      genrelist.isNotEmpty == true
                          ? ElevatedButton(
                              onPressed: () {
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
              // RefreshIndicator(
              //   onRefresh: _handleRefresh,
              //   child: FutureBuilder(
              //     future: context.read<BookListCubit>().getAllBooksList(),
              //       builder: (context, snapshot) {
              //       if (!snapshot.hasData) {
              //         return const Center(child: CircularProgressIndicator());
              //       }
              //       final book = snapshot.data!;
              //       return Column(
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Expanded(
              //                   child: TextField(
              //                     controller: searchController,
              //                     focusNode: searchFocusNode,
              //                     decoration: const InputDecoration(
              //                       hintText: 'Search Book...',
              //                       prefixIcon: Icon(Icons.search),
              //                       border: OutlineInputBorder(
              //                         borderRadius: BorderRadius.all(
              //                             Radius.circular(10.0)),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //                 IconButton(
              //                   icon: Icon(
              //                     Icons.filter_list,
              //                     color: state == ListState.filter
              //                         ? Colors.blue
              //                         : Colors.grey,
              //                   ),
              //                   onPressed: () {
              //                     // Add your filter action here
              //                     // print('Filter icon pressed');
              //                     filterPage(context);
              //                   },
              //                 ),
              //               ],
              //             ),
              //           ),
              //           (state == ListState.filter)
              //               ? ElevatedButton(
              //                   onPressed: () => clearFilter(),
              //                   child: const Text('clear filter'),
              //                 )
              //               : Container(),
              //           Expanded(
              //             child: InkWell(
              //               onTap: () => {
              //                 searchFocusNode.unfocus(),
              //               },
              //               child: (book.isNotEmpty)
              //                   ? ListView.builder(
              //                       itemCount: book.length,
              //                       itemBuilder: ((context, index) {
              //                         final newbook = book[index];
              //                         return ScreenUtilInit(
              //                           child: BookWidget(
              //                               newbook,
              //                               () => DeleteBook(newbook),
              //                               () => _editItem(newbook, context)),
              //                         );
              //                       }),
              //                     )
              //                   : const Center(child: Text("No data")),
              //             ),
              //           ),
              //         ],
              //       );
              //     },
              //   ),
              // ),
            );
          },
        ),
      ),
    );
  }

  void clearFilter() {
    state = ListState.all;
    setState(() {});
  }

  void filterPage(BuildContext context, Function(List<Genre>) onApply) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EnumDropdown(
          filterValue: filterValue,
          onApply: onApply,
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

  Future<List<Book>> filterBooks() async {
    // var query = supabase.from('Book').select();
    // if (filterValue.generList.isNotEmpty) {
    //   final orQuery = filterValue.generList
    //       .map((genre) => 'Genre.eq.${genre.name}')
    //       .join(',');
    //   query = query.or(orQuery);
    // }

    // query = query.gte('Price', filterValue.minValue);
    // query = query.lt('Price', filterValue.maxValue);

    // final response = await query;
    // final book = response.map((e) => Book.fromJson(e)).toList();
    return [];
  }

  Future<List<Book>> fetchBooks() async {
    // final response = await supabase.from('Book').select();
    // final book = response.map((e) => Book.fromJson(e)).toList();
    // return book;
    return [];
  }

  void DeleteBook(Book book) async {}

  Future<void> _handleRefresh() async {
    // Simulate network fetch or database query
    await Future.delayed(const Duration(seconds: 2));
    // Update the list of items and refresh the UI
    setState(() {});
  }
}
