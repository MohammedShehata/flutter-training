import 'package:bloc/bloc.dart';
import 'package:flutter_training/data/model/course.dart';
import 'package:flutter_training/ui/base_state.dart';
import 'package:meta/meta.dart';

part 'course_details_event.dart';

part 'course_details_state.dart';

class CourseDetailsBloc extends Bloc<CourseDetailsEvent, CourseDetailsState> {
  CourseDetailsBloc({required Course course})
      : super(CourseDetailsState(course: course)) {}
}
