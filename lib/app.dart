import 'package:code_exercise_two_variants/cubits/display_data_cubit/display_data_cubit.dart';
import 'package:code_exercise_two_variants/cubits/search_data_cubit/search_data_cubit.dart';
import 'package:code_exercise_two_variants/repositories/code_exercise_repository.dart';
import 'package:code_exercise_two_variants/screens/code_exercise_list_screen.dart';
import 'package:code_exercise_two_variants/utilities/theme.dart';
import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'flavors.dart';
// import 'pages/my_home_page.dart';

class App extends StatelessWidget {

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchDataCubit>(
          create: (context) => SearchDataCubit(),
        ),
        BlocProvider<DisplayDataCubit>(
          create: (context) => DisplayDataCubit(
            repository: CodeExerciseRepository(
              Dio(),
            ),
            searchDataCubit: context.read<SearchDataCubit>(),
          ),
          // child: CodeExerciseListScreen(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: F.title,
        theme: appTheme,
        home: const CodeExerciseListScreen(),
      ),
    );
  }

  // Widget _flavorBanner({
  //   required Widget child,
  //   bool show = true,
  // }) =>
  //     show
  //         ? Banner(
  //       child: child,
  //       location: BannerLocation.topStart,
  //       message: F.name,
  //       color: Colors.green.withOpacity(0.6),
  //       textStyle: TextStyle(
  //           fontWeight: FontWeight.w700,
  //           fontSize: 12.0,
  //           letterSpacing: 1.0),
  //       textDirection: TextDirection.ltr,
  //     )
  //         : Container(
  //       child: child,
  //     );
}
    // return MaterialApp(
    //   title: F.title,
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: _flavorBanner(
    //     child: MyHomePage(),
    //     show: kDebugMode,
    //   ),
    // );