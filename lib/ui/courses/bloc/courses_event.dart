part of 'courses_bloc.dart';

abstract class CoursesEvent extends Equatable {
  const CoursesEvent();

  @override
  List<Object?> get props => [];
}

class CoursesListEvent extends CoursesEvent {
  CoursesListEvent();
}
