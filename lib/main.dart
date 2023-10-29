// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_gists_app/presentation/di/injector.dart';
import 'package:github_gists_app/presentation/pages/home/home_page.dart';
import 'package:github_gists_app/presentation/theme/app_theme.dart';
import 'package:github_gists_app/presentation/theme/theme_cubit.dart';
import 'package:github_gists_app/presentation/theme/theme_state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjector();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeCubit _cubit = i.get<ThemeCubit>();

  MyApp({super.key}) {
    _cubit.getCurrentTheme();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => _cubit,
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Github gists',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: state.themeMode,
            home: HomePage(),
          );
        },
      ),
    );
  }
}
