// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


// ignore: must_be_immutable
class MainDropDown extends StatefulWidget {
   MainDropDown({
    Key? key,
    required this.label,
    required this.onChanged,
    this.height = 25,
    this.width = 150,
    required this.list,
    required this.value,
  }) : super(key: key);
  final String label;
  final Function(String) onChanged;
  final double height;
  final double width;
  final List<String> list;
   String? value;

  @override
  State<MainDropDown> createState() => _MainDropDownState();
}

class _MainDropDownState extends State<MainDropDown> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(34),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          icon: const Icon(
            Icons.expand_more,
            color: Colors.grey,
          ),
          value:widget. value,
          hint: Text(widget.label),
          onChanged: (val) {
            setState((){
               widget.value = val;
            });
            widget.onChanged(val!);
          },
          items: widget.list
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width / 4,
                    padding: EdgeInsets.only(top: 8),
                    child: Text(e.toString()),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}