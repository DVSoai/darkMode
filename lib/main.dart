import 'package:darkmode_bloc/home.dart';
import 'package:darkmode_bloc/theme/app_theme.dart';
import 'package:darkmode_bloc/theme/bloc/theme_bloc.dart';
import 'package:darkmode_bloc/theme/bloc/theme_state.dart';
import 'package:darkmode_bloc/theme/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageImpl().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeBloc(LocalStorageImpl())),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              ThemeData themeData;
              if (state is DarkThemeState) {
                themeData = state.themeData;
              } else {
                themeData = state is LightThemeState
                    ? state.themeData
                    : AppTheme().lightTheme; // Default theme
              }
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: themeData,
                // darkTheme: AppTheme().darkTheme,
                // themeMode: state is DarkThemeState ? ThemeMode.dark : ThemeMode.light,
                home: const HomePage(),

              );
            },
          );
        },
      ),
    );
  }
}


