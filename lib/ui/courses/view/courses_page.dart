// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training/data/model/course.dart';
import 'package:flutter_training/l10n/l10n.dart';
import 'package:flutter_training/ui/base_state.dart';
import 'package:flutter_training/ui/courses/bloc/courses_bloc.dart';
import 'package:flutter_training/ui/courses/widgets/course_list_tile.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CoursesBloc()..add(CoursesList()),
      child: const CourseView(),
    );
  }
}

class CourseView extends StatelessWidget {
  const CourseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.coursesAppBarTitle)),
      body: Builder(builder: (context) {
        final coursesState =
            context.select((CoursesBloc coursesBloc) => coursesBloc.state);

        if (coursesState.status == Status.failure) {
          // TODO: show snack bar for the failure
          print("request failed...${coursesState.message}");
        }

        // return const Center(child: CounterText());
        return CoursesListView(coursesState.courses);
      }),
    );
  }
}

class CoursesListView extends StatelessWidget {
  final List<Course> _courses;

  CoursesListView(this._courses);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _courses.length,
        itemBuilder: (context, index) {
          return CourseListTile(_courses[index]);
        });
  }
}
