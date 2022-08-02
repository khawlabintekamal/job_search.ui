import 'package:flutter/material.dart';
import 'package:job_search/widget/appbar.dart';
import 'package:job_search/widget/joblist.dart';
import 'package:job_search/widget/searchbar.dart';

import 'widget/taglist.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(flex: 2, child: Container()),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration:
                        BoxDecoration(color: Colors.grey.withOpacity(0.2)),
                  ))
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [HomeAppbar(), SearchBar(), TagList(), JobList()],
            ),
          )
        ],
      ),
    );
  }
}
