import 'package:flutter/material.dart';

import '../../../data/model/course.dart';

class CourseListTile extends StatelessWidget {
  final Course _course;

  CourseListTile(this._course);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 13),
      child: Column(
        children: [
          Image.network(_course.image ?? ""),
          Text(_course.title ?? ""),
        ],
      ),
    );
  }
}
