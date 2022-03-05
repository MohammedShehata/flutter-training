import 'package:flutter/material.dart';
import 'package:flutter_training/generated/assets.dart';

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
          FadeInImage(
            placeholder: AssetImage(Assets.imagesCartzero),
            image: NetworkImage(_course.image ?? ""),
            height: 180,
          ),
          Text(_course.title ?? ""),
        ],
      ),
    );
  }
}
