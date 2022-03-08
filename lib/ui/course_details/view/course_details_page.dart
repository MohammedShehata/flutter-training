import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training/data/model/course.dart';
import 'package:flutter_training/ui/course_details/bloc/course_details_bloc.dart';
import 'package:flutter_training/ui/courses/widgets/course_list_tile.dart';

class CourseDetailsPage extends StatelessWidget {
  static Route<void> route({required Course course}) {
    return MaterialPageRoute(
      builder: (context) => BlocProvider(
        create: (context) => CourseDetailsBloc(course: course),
        child: CourseDetailsPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CourseDetalsView();
  }
}

class CourseDetalsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var state = context.select(
        (CourseDetailsBloc courseDetailsBloc) => courseDetailsBloc.state);
    return Scaffold(
      appBar: AppBar(
        title: Text(state.course.title.toString()),
      ),
      body: CourseListTile(state.course),
    );
  }
}
