import 'package:agriguide/Core/Constants.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Kprimarycolor)),
          hintText: 'Search Here',
          hintStyle:
              TextStyle(color: Asecondarycolor, fontWeight: FontWeight.w400),
          prefixIcon: Icon(
            Icons.search,
            size: 33,
            color: Color(0xff858484),
          ),
          fillColor: Ksecondarycolor,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Asecondarycolor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Asecondarycolor))),
    );
  }
}
