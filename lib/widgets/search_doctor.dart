import 'package:flutter/material.dart';

class SearchDoctor extends StatelessWidget {
  const SearchDoctor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(Icons.search),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.close),
        ),
      ),
    );
  }
}
