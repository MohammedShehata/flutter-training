import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_training/data/model/course.dart';
import 'package:flutter_training/data/model/responses/courses_response.dart';
import 'package:flutter_training/data/repository/CoursesRepository.dart';
import 'package:flutter_training/ui/base_state.dart';
import 'package:flutter_training/utils/bloc_utils.dart';

part 'courses_event.dart';

part 'courses_state.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  CoursesRepository _coursesRepository = CoursesRepository();

  CoursesBloc() : super(CoursesState()) {
    on<CoursesListEvent>(_onListCourses);
  }

  Future<void> _onListCourses(
      CoursesListEvent event, Emitter<CoursesState> emit) async {
    // loading state
    emit(state.copyWith(status: Status.loading));

    await networkCall<CoursesResponse>(_coursesRepository.getCourses(),
        (coursesResponse) {
      emit(state.copyWith(
          status: Status.success, courses: coursesResponse.data?.courses));
    }, (coursesResponse) {
      emit(state.copyWith(
          status: Status.failure,
          statusCode: coursesResponse?.statusCode,
          message: coursesResponse?.message));
    });
  }
}
