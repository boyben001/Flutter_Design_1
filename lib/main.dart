import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ytadvanced/cubit/app_cubit.dart';
import 'package:ytadvanced/cubit/app_cubit_logics.dart';
import 'package:ytadvanced/pages/detail_page.dart';
import 'package:ytadvanced/pages/home_page.dart';
import 'package:ytadvanced/pages/landing_page.dart';
import 'package:ytadvanced/pages/navpages/main_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial',
      home: BlocProvider<AppCubits>(
        create: (context)=>AppCubits(),
        child: AppCubitLogics(),
      ),
    );
  }
}