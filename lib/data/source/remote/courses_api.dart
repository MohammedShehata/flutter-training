import 'package:flutter_training/data/source/remote/base_api.dart';

import '../../model/responses/courses_response.dart';

class CoursesApi extends BaseApi {
  Future<CoursesResponse> getCourses() async {
    var response = await get(
        "/courses", {"country_code": "eg", "page": "1", "limit": "10"});
    return CoursesResponse.fromJson(response);
  }
}
