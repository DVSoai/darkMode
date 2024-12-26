import 'package:darkmode_bloc/theme/app_theme.dart';
import 'package:darkmode_bloc/theme/bloc/theme_bloc.dart';
import 'package:darkmode_bloc/theme/bloc/theme_event.dart';
import 'package:darkmode_bloc/theme/bloc/theme_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Theme.of(context).backgroundGoal(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<ThemeBloc>().add(ToggleThemeEvent());
                },
                child: Text('Toggle Theme',style: Theme.of(context).textTheme.titleLarge,),
              ),
            ),
            // Thêm nút CupertinoSwitch
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dark Mode'),
                  CupertinoSwitch(
                    value: context.watch<ThemeBloc>().state is DarkThemeState,
                    onChanged: (value) {
                      context.read<ThemeBloc>().add(ToggleThemeEvent());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
