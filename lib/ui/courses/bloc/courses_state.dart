part of 'courses_bloc.dart';

class CoursesState extends BaseState {
  List<Course> courses;

  @override
  List<Object> get props => [status, courses];

  CoursesState({this.courses = const []});

  CoursesState copyWith({
    Status? status = null,
    String? statusCode = null,
    String? message = null,
    List<Course>? courses = null,
  }) {
    return CoursesState(
      courses: courses ?? this.courses,
    )
      ..status = status ?? this.status
      ..statusCode = statusCode ?? this.statusCode
      ..message = message ?? this.message;
  }
}
