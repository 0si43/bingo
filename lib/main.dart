// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:js';

import 'package:bingo/first_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bingo',
      theme: ThemeData(
        // Add the 3 lines from here...
        primaryColor: Colors.lightBlue,
      ),
      home: StartWindow(),
    );
  }
}

class StartWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirstPage();
  }
}
