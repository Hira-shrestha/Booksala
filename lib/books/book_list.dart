import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_store/books/addbookwidget.dart';
import 'package:library_store/books/book.dart';
import 'package:library_store/books/bookwidget.dart';
import 'package:library_store/books/enumdropdown.dart';

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
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: FutureBuilder(
          future: switch (state) {
            ListState.all => fetchBooks(),
            ListState.search => searchItems(),
            ListState.filter => filterBooks(),
          },
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            final book = snapshot.data!;
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: searchController,
                          focusNode: searchFocusNode,
                          decoration: const InputDecoration(
                            hintText: 'Search Book...',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.filter_list,
                          color: state == ListState.filter
                              ? Colors.blue
                              : Colors.grey,
                        ),
                        onPressed: () {
                          // Add your filter action here
                          // print('Filter icon pressed');
                          filterPage(context);
                        },
                      ),
                    ],
                  ),
                ),
                (state == ListState.filter)
                    ? ElevatedButton(
                        onPressed: () => clearFilter(),
                        child: const Text('clear filter'),
                      )
                    : Container(),
                Expanded(
                  child: InkWell(
                    onTap: () => {
                      searchFocusNode.unfocus(),
                    },
                    child: (book.isNotEmpty)
                        ? ListView.builder(
                            itemCount: book.length,
                            itemBuilder: ((context, index) {
                              final newbook = book[index];
                              return ScreenUtilInit(
                                child: BookWidget(
                                    newbook,
                                    () => DeleteBook(newbook),
                                    () => _editItem(newbook, context)),
                              );
                            }),
                          )
                        : const Center(child: Text("No data")),
                  ),
                ),
              ],
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

  void filterPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EnumDropdown(
          updatedGenerlist: (newfilterValue) {
            filterValue = newfilterValue;
            state = ListState.filter;
            filterBooks();
            setState(() {});
          },
          filterValue: filterValue,
        ),
      ),
    );
  }

  void _editItem(Book book, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddBook(book: book)),
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
