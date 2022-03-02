import 'package:flutter_training/data/model/responses/courses_response.dart';
import 'package:flutter_training/data/source/remote/courses_api.dart';

class CoursesRepository {
  CoursesApi _coursesApi = CoursesApi();

  Future<CoursesResponse> getCourses() => _coursesApi.getCourses();
}
