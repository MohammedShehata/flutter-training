import 'package:flutter/material.dart';

import '../../../data/model/course.dart';

class CourseListTile extends StatelessWidget {
  final Course _course;

  CourseListTile(this._course);

  @override
  Widget build(BuildContext context) {
    return Text("course titile ${_course.title}");
  }
}
