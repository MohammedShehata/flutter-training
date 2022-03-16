import 'package:flutter/material.dart';
import 'package:flutter_training/generated/assets.dart';
import 'package:flutter_training/l10n/l10n.dart';
import 'package:flutter_training/theme/app_colors.dart';
import 'package:flutter_training/theme/app_fonts.dart';

import '../../../data/model/course.dart';

class CourseListTile extends StatelessWidget {
  final Course _course;
  void Function(Course course)? onTab;

  CourseListTile(this._course, {this.onTab = null});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return GestureDetector(
      child: Container(
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
                      alignment: AlignmentDirectional.bottomStart,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.black50,
                          borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(8),
                              bottomStart: Radius.circular(8)),
                        ),
                        child: Container(
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(Assets.imagesStudents),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    l10n.courseSubscribers(_course.subscribersCount.toString()),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                _course.title ?? "",
                style: AppFonts.headline2FontDark(context),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                "${_course.currencyCode} ${_course.price}",
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        onTab?.call(_course);
      },
    );
  }
}
