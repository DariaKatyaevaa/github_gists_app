import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_gists_app/presentation/pages/home/widgets/gist_list_widget.dart';
import 'package:github_gists_app/presentation/theme/theme_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 10,
        title: const Text('Github Gist').animate().fadeIn().scale().move(delay: 300.ms, duration: 600.ms),
        actions: [
          IconButton(
            onPressed: () => context.read<ThemeCubit>().switchTheme(),
            icon: context.read<ThemeCubit>().state.themeMode == ThemeMode.light
                ? const Icon(CupertinoIcons.sun_max_fill)
                : const Icon(CupertinoIcons.moon_stars_fill),
          ).animate().fadeIn().scale().move(delay: 300.ms, duration: 600.ms),
        ],
      ),
      extendBodyBehindAppBar: false,
      body: const GistListWidget(),
    );
  }
}
