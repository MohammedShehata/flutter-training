import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_training/data/model/course.dart';
import 'package:flutter_training/data/repository/CoursesRepository.dart';
import 'package:flutter_training/ui/base_state.dart';

part 'courses_event.dart';

part 'courses_state.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  CoursesRepository _coursesRepository = CoursesRepository();

  CoursesBloc() : super(CoursesState()) {
    on<CoursesList>(_onListCourses);
  }

  Future<void> _onListCourses(
      CoursesList event, Emitter<CoursesState> emit) async {
    // loading state
    emit(state.copyWith(status: Status.loading));

    var coursesResponse = await _coursesRepository.getCourses();

    if (coursesResponse.isSuccessful()) {
      emit(state.copyWith(
          status: Status.success, courses: coursesResponse.data?.courses));
    } else {
      emit(state.copyWith(
          status: Status.failure,
          statusCode: coursesResponse.statusCode,
          message: coursesResponse.message));
    }
  }
}
