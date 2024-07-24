import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  final Function(String)? onChanged;
  final Function()? openFilter;
  late bool? showFilterIcon;

  Searchbar(
      {super.key, this.onChanged, this.openFilter, this.showFilterIcon = true});

  @override
  Widget build(BuildContext context) => TextFormField(
      onChanged: onChanged,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: 'Search Book...',
        prefixIcon: const Icon(Icons.search),
        suffixIcon: showFilterIcon == true
            ? IconButton(
                icon: const Icon(
                  color: Color(0xFF3F5AA6),
                  Icons.filter_list,
                  // ignore: unrelated_type_equality_checks
                ),
                onPressed: openFilter,
              )
            : const SizedBox(),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ));
}
