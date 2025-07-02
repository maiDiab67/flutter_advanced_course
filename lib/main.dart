import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/di/dependancy_injection.dart';
import 'package:flutter_advanced_course/core/routing/app_router.dart';
import 'package:flutter_advanced_course/doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
