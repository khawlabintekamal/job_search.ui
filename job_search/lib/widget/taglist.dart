
import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final tagList = [
    'All',
    '⚡ Popular',
    '⭐ Featured',
  ];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14),
      height: 40,
      decoration: BoxDecoration(color: Color.fromARGB(0, 122, 210, 154)),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1.5,
                        color: selected == index
                            ? Colors.white
                            : Color.fromARGB(255, 141, 208, 201)),
                    borderRadius: BorderRadius.circular(20),
                    color: selected == index
                        ? Color.fromARGB(255, 141, 208, 201)
                        : Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 13.0, right: 13),
                    child: Text(tagList[index]),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: ((context, index) => SizedBox(
                width: 20,
              )),
          itemCount: tagList.length),
    );
  }
}
