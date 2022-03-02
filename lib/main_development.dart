// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_training/app/app.dart';
import 'package:flutter_training/bootstrap.dart';

import 'flavor_constants.dart';

void main() {
  FlavorConfig(variables: {
    BASE_URL: "developer.tadarab.com",
    BASE_URL_PATH: "/wp-json/api"
  });

  bootstrap(() => const App());
}
