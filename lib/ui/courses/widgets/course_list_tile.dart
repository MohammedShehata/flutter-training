import 'package:flutter/material.dart';
import 'package:flutter_training/theme/app_colors.dart';
import 'package:flutter_training/theme/app_fonts.dart';
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
          Container(
            child: Container(
              height: 180,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: FadeInImage(
                        placeholder: AssetImage(Assets.imagesCartzero),
                        image: NetworkImage(
                          _course.image ?? "",
                        ),
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      child: Container(
                        color: AppColors.black50,
                        child: Text(_course.duration.toString()),
                        padding: EdgeInsets.only(
                            top: 4, bottom: 4, left: 16, right: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(_course.subscribersCount.toString()),
              ),
              Image.asset(Assets.imagesStudents),
            ],
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              _course.title ?? "",
              style: AppFonts.headline2FontDark(context),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              "${_course.currencyCode} ${_course.price}",
            ),
          ),
        ],
      ),
    );
  }
}
