import 'package:flutter/material.dart';
import 'package:library_store/core/enums/genre.dart';

void showOptionsBottomSheet(BuildContext context, Function(Genre) onSelect) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Select Genere"),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.separated(
                  itemCount: Genre.values.map((option) => option).length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(Genre.values
                          .map((e) => e.toString().split('.')[1])
                          .toList()[index]),
                      onTap: () {
                        onSelect(Genre.values[index]);
                        Navigator.of(context).pop();
                      },
                    );
                  }),
            ),
          ),
        ],
      );
    },
  );
}
