import 'package:flutter/material.dart';
import 'package:job_search/model/job.dart';

class JobItem extends StatelessWidget {
  Job _job;

  JobItem(this._job);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 12),
      child: Card(
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                          child: Image.asset(_job.logoUrl),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(_job.company),
                      ],
                    ),
                    Icon(
                      Icons.bookmark_outline_outlined,
                      color: Colors.black54,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 110.0, top: 10),
                  child: Text(
                    _job.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.amber.shade400,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        _job.location,
                        style: TextStyle(height: 1.1),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
