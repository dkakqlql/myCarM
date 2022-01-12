import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial/cubit/app_cubit_logics.dart';
import 'package:tutorial/cubit/app_cubits.dart';
import 'package:tutorial/services/data_services.dart';

void main() {
  runApp(const MyApp()); // Start MyApp that is main page.
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(
          data: DataServices()
        ),
        child: AppCubitLogics(),
      )
    );
  }
}