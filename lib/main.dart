import 'package:e_commerce/features/home/cubit.dart';
import 'package:e_commerce/features/onBordering/view.dart';
import 'package:e_commerce/features/splash/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cort/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create:  (context)=>HomeCubit()),
        ],
        child: MaterialApp(
            title: 'E-Commerce',
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            onGenerateRoute: onGenerateRoute,
            home:OnBorderingView()
        ));
  }
}

