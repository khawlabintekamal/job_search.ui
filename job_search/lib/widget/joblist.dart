import 'package:flutter/material.dart';
import 'package:job_search/model/job.dart';
import 'package:job_search/widget/jobdetails.dart';
import 'package:job_search/widget/jobitem.dart';

class JobList extends StatelessWidget {
  final jobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => JobDetails(jobList[index]));
                },
                child: JobItem(jobList[index]));
          },
          separatorBuilder: (_, index) => SizedBox(
                width: 5,
              ),
          itemCount: jobList.length),
    );
  }
}