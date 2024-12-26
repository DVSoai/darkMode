import 'package:darkmode_bloc/theme/text_theme.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'app_color.dart';
import 'app_constants.dart';
import 'bloc/theme_bloc.dart';
import 'bloc/theme_state.dart';


const fontName = 'Caveat';

class AppTheme {
  final lightTheme = ThemeData.light().copyWith(
      dividerColor: Colors.transparent,
      scaffoldBackgroundColor: lightAppThemeData.background,
      primaryColor: lightAppThemeData.primaryColor,
      // canvasColor: lightAppThemeData.background,
      primaryColorDark: lightAppThemeData.primaryColorDark,
      highlightColor: Colors.transparent,
      disabledColor: lightAppThemeData.neutral5,
      cardColor: lightAppThemeData.background,
      secondaryHeaderColor: lightAppThemeData.secondaryColor3,
      hintColor: lightAppThemeData.neutral4,
      splashColor: Colors.transparent,
      shadowColor: Colors.black.withOpacity(0.3),
      // dividerColor: lightAppThemeData.neutral6,
      inputDecorationTheme: InputDecorationTheme(
        errorMaxLines: 2,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), // Radius 8px
          borderSide: const BorderSide(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: lightAppThemeData.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), // Radius 8px
          borderSide: const BorderSide(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), // Radius 8px
          borderSide: const BorderSide(
            color: Color.fromRGBO(255, 0, 0, 0.2),
            width: 1,
          ),
        ),
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 0.11,
        ),
        contentPadding: const EdgeInsets.all(10),
      ),
      buttonTheme: ButtonThemeData(
        height: 50,
        buttonColor: lightAppThemeData.secondaryColor1,
        disabledColor: lightAppThemeData.neutral5,
        hoverColor: lightAppThemeData.secondaryColor3,
        highlightColor: lightAppThemeData.primaryColor,
      ),
      textTheme: AppTextTheme(lightAppThemeData.neutral2).textTheme,
      appBarTheme: const AppBarTheme().copyWith(
          surfaceTintColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light),
          toolbarHeight: 46,
          backgroundColor: lightAppThemeData.background,
          foregroundColor: lightAppThemeData.background,
          shadowColor: Colors.black.withOpacity(0.3),
          // color: lightAppThemeData.background,
          centerTitle: true,
          elevation: 0.2,
          iconTheme: IconThemeData(color: lightAppThemeData.neutral1),
          titleTextStyle: textStyle18.copyWith(
              fontWeight: FontWeight.w600, color: lightAppThemeData.neutral2)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: lightAppThemeData.background,
        foregroundColor: lightAppThemeData.primaryColor,
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        primaryColor: lightAppThemeData.primaryColor,
      ),
      textSelectionTheme:
          TextSelectionThemeData(cursorColor: lightAppThemeData.primaryColor),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
      bottomAppBarTheme: BottomAppBarTheme(color: lightAppThemeData.background),
      colorScheme: const ColorScheme.light()
          .copyWith(primary: lightAppThemeData.primaryColor)
          .copyWith(surface: lightAppThemeData.background)
          .copyWith(error: lightAppThemeData.secondaryColor1)
  );

  final darkTheme = ThemeData.dark().copyWith(
      dividerColor: Colors.transparent,
      scaffoldBackgroundColor: darkAppThemeData.background,
      primaryColor: darkAppThemeData.primaryColor,
      highlightColor: Colors.transparent,
      canvasColor: darkAppThemeData.neutral6.withOpacity(0.08),
      disabledColor: darkAppThemeData.neutral5,
      primaryColorDark: darkAppThemeData.primaryColorDark,
      cardColor: darkAppThemeData.neutral6,
      secondaryHeaderColor: darkAppThemeData.secondaryColor3,
      hintColor: darkAppThemeData.neutral6,
      splashColor: Colors.transparent,
      shadowColor: Colors.black.withOpacity(0.3),
      // dividerColor: darkAppThemeData.neutral6,
      inputDecorationTheme: InputDecorationTheme(
        errorMaxLines: 2,
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: lightAppThemeData.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), // Radius 8px
          borderSide: const BorderSide(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            width: 1,
          ),
        ),
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 0.11,
        ),
        contentPadding: const EdgeInsets.all(10),
      ),
      buttonTheme: ButtonThemeData(
        height: 50,
        buttonColor: darkAppThemeData.secondaryColor1,
        disabledColor: darkAppThemeData.neutral5,
        hoverColor: darkAppThemeData.secondaryColor3,
        highlightColor: darkAppThemeData.primaryColor,
      ),
      textTheme: AppTextTheme(darkAppThemeData.neutral2).textTheme,
      appBarTheme: const AppBarTheme().copyWith(
          surfaceTintColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.dark),
          toolbarHeight: 46,
          foregroundColor: darkAppThemeData.neutral1,
          shadowColor: Colors.black.withOpacity(0.3),
          color: darkAppThemeData.background,
          centerTitle: true,
          elevation: 1,
          iconTheme: IconThemeData(color: darkAppThemeData.neutral1),
          titleTextStyle: textStyle18.copyWith(
              fontWeight: FontWeight.w600, color: darkAppThemeData.neutral1)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: darkAppThemeData.background,
        foregroundColor: darkAppThemeData.primaryColor,
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        primaryColor: darkAppThemeData.primaryColor,
      ),
      textSelectionTheme:
          TextSelectionThemeData(cursorColor: darkAppThemeData.primaryColor),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
      bottomAppBarTheme: BottomAppBarTheme(color: darkAppThemeData.neutral6),
      colorScheme: const ColorScheme.dark()
          .copyWith(primary: darkAppThemeData.primaryColor)
          .copyWith(surface: darkAppThemeData.background)
          .copyWith(error: darkAppThemeData.secondaryColor1)


  );
}

extension LightTheme on ThemeData {
  AppThemeData appThemeData(BuildContext context) {
    final isDark = this.isDark(context);
    return isDark ? darkAppThemeData : lightAppThemeData;
  }

  bool isDark(BuildContext context) {
    final themeState = context.read<ThemeBloc>().state;
    return themeState is DarkThemeState;
  }

  Color white(BuildContext context) => Colors.white;
  Color neutral1(BuildContext context) => appThemeData(context).neutral1;
  Color neutral2(BuildContext context) => appThemeData(context).neutral2;
  Color neutral3(BuildContext context) => appThemeData(context).neutral3;
  Color neutral4(BuildContext context) => appThemeData(context).neutral4;
  Color neutral5(BuildContext context) => appThemeData(context).neutral5;
  Color neutral6(BuildContext context) => appThemeData(context).neutral6;
  Color neutral7(BuildContext context) => appThemeData(context).neutral7;
  Color neutral8(BuildContext context) => appThemeData(context).neutral8;
  Color neutral9(BuildContext context) => appThemeData(context).neutral9;
  Color neutral10(BuildContext context) => appThemeData(context).neutral10;
  Color primary(BuildContext context) => appThemeData(context).primaryColor;
  Color primaryColorDark(BuildContext context) =>
      appThemeData(context).primaryColorDark;
  Color background(BuildContext context) => appThemeData(context).background;
  Color errorColor1(BuildContext context) =>
      appThemeData(context).secondaryColor1;

  Color backgroundGoal(BuildContext context) =>
      isDark(context) ? const Color(0xFF1D1F20) : appThemeData(context).neutral8;

  Color backgroundGoalDetail(BuildContext context) =>
      isDark(context) ? const Color(0xFF1D1F20) : appThemeData(context).background;

  Color backgroundGoalDivider(BuildContext context) =>
      isDark(context) ? appThemeData(context).neutral7 : appThemeData(context).neutral6;
}


const textStyle8 = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontSize: 8 + AppConstants.addSize,
  fontWeight: FontWeight.normal,
);
const textStyle10 = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontSize: 10.0 + AppConstants.addSize,
  fontWeight: FontWeight.normal,
);
const textStyle12 = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontSize: 12.0 + AppConstants.addSize,
  fontWeight: FontWeight.normal,
);
const textStyle13 = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontSize: 13.0 + AppConstants.addSize,
  fontWeight: FontWeight.normal,
);
const textStyle14 = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontSize: 14.0 + AppConstants.addSize,
  fontWeight: FontWeight.normal,
);
const textStyle16 = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontSize: 16.0 + AppConstants.addSize,
  fontWeight: FontWeight.normal,
);
const textStyle18 = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontSize: 18.0 + AppConstants.addSize,
  fontWeight: FontWeight.normal,
);

const textStyle22 = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontSize: 22.0 + AppConstants.addSize,
  fontWeight: FontWeight.normal,
);

const textStyle24 = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontSize: 24.0 + AppConstants.addSize,
  fontWeight: FontWeight.normal,
);

const textStyle20 = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontSize: 22.0 + AppConstants.addSize,
  fontWeight: FontWeight.normal,
);

const textStyleNormal = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontSize: 14.0 + AppConstants.addSize,
  fontWeight: FontWeight.normal,
);
const textStyleBold = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
);

const textStyleSemiBold = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
);

const textStyleItalic = TextStyle(
  fontFamily: AppConstants.fontName,
  fontStyle: FontStyle.italic,
  fontSize: 14.0 + AppConstants.addSize,
  fontWeight: FontWeight.normal,
);

Widget flightShuttleBuilder(
  BuildContext flightContext,
  Animation<double> animation,
  HeroFlightDirection flightDirection,
  BuildContext fromHeroContext,
  BuildContext toHeroContext,
) {
  return SingleChildScrollView(
    child: DefaultTextStyle(
      style: DefaultTextStyle.of(toHeroContext).style,
      child: toHeroContext.widget,
    ),
  );
}
