import 'package:flutter/material.dart';

class CustomerListTitle extends StatefulWidget {
  String title;
  String trailing;
  Color? color;
  CustomerListTitle(
      {super.key, required this.title, required this.trailing, this.color});

  @override
  State<CustomerListTitle> createState() => _CustomerListTitleState();
}

class _CustomerListTitleState extends State<CustomerListTitle> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "${widget.title}",
        style: TextStyle(fontSize: 12),
      ),
      trailing: Text(
        "${widget.trailing}",
        style: TextStyle(
          color: widget.color == null
              ? Colors.black.withOpacity(0.5)
              : widget.color,
        ),
      ),
    );
  }
}
