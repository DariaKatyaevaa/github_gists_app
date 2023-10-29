import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_gists_app/domain/entities/gist.dart';
import 'package:github_gists_app/presentation/pages/gist_info/cubit/gist_info_cubit.dart';
import 'package:github_gists_app/presentation/pages/gist_info/cubit/gist_info_state.dart';
import 'package:github_gists_app/presentation/pages/gist_info/widgets/commits_table.dart';
import 'package:github_gists_app/presentation/pages/gist_info/widgets/gist_file_list_item.dart';
import 'package:github_gists_app/presentation/pages/gist_info/widgets/white_shadow_container.dart';
import 'package:github_gists_app/presentation/di/injector.dart';
import 'package:github_gists_app/presentation/pages/gist_file/gist_file_page.dart';
import 'package:github_gists_app/presentation/pages/shared_widgets/user_avatar_widget.dart';
import 'package:github_gists_app/presentation/theme/theme_cubit.dart';

class GistInfoPage extends StatefulWidget {
  final Gist gist;

  const GistInfoPage({
    super.key,
    required this.gist,
  });

  @override
  State<GistInfoPage> createState() => _GistInfoPageState();
}

class _GistInfoPageState extends State<GistInfoPage> {
  final GistInfoCubit _cubit = i.get<GistInfoCubit>();

  @override
  void initState() {
    super.initState();
    _cubit.loadInfo(widget.gist);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GistInfoCubit, GistInfoState>(
      bloc: _cubit,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            scrolledUnderElevation: 10,
            title: const Text('Gist'),
          ),
          body: RefreshIndicator(
            backgroundColor: Theme.of(context).primaryColor,
            color: context.read<ThemeCubit>().state.themeMode == ThemeMode.dark ? Colors.white : null,
            onRefresh: _cubit.refresh,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Stack(
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: [
                      const SizedBox(height: 16.0),
                      RoundedFloatingContainer(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                UserAvatarWidget(avatarUrl: widget.gist.user.avatarUrl),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: Text(
                                    '${widget.gist.user.userName} / ${widget.gist.title}',
                                    style: Theme.of(context).textTheme.titleSmall,
                                    maxLines: 3,
                                  ),
                                ),
                              ],
                            ),
                            if (widget.gist.description?.isNotEmpty ?? false)
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0, left: 8.0),
                                child: Text(
                                  widget.gist.description!,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              )
                          ],
                        ),
                      ).animate().fadeIn().scale().move(delay: 300.ms, duration: 600.ms),
                      const SizedBox(height: 16.0),
                      state is GistInfoInitialState || state is GistInfoLoadingState
                          ? const Padding(
                              padding: EdgeInsets.only(top: 40.0),
                              child: Center(child: CircularProgressIndicator()),
                            )
                          : state is GistInfoErrorState
                              ? Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        state.errorMessage,
                                        style: Theme.of(context).textTheme.bodyMedium,
                                      ),
                                      IconButton(
                                        onPressed: _cubit.refresh,
                                        icon: Icon(
                                          Icons.refresh,
                                          size: 32.0,
                                          color: Theme.of(context).textTheme.bodyMedium!.color,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : Column(
                                  children: [
                                    Text(
                                      'Files',
                                      style: Theme.of(context).textTheme.titleLarge,
                                    ),
                                    const SizedBox(height: 8.0),
                                    ListView.builder(
                                      physics: const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: widget.gist.files.length,
                                      itemBuilder: (context, index) {
                                        state as GistInfoLoadedState;
                                        final filename = state.gist.files[index].filename;
                                        final fileContent = state.fileContents[index];
                                        return GistItemListItem(
                                          filename: filename,
                                          fileContent: fileContent,
                                          openFile: () => _openFilePage(
                                            context,
                                            filename,
                                            fileContent,
                                          ),
                                        );
                                      },
                                    ).animate().fadeIn(),
                                    const SizedBox(height: 16.0),
                                    Text(
                                      'Commits',
                                      style: Theme.of(context).textTheme.titleLarge,
                                    ),
                                    const SizedBox(height: 8.0),
                                    CommitsTable(
                                      commits: (state as GistInfoLoadedState).commits,
                                    ).animate().fadeIn(),
                                    SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.1,
                                    ),
                                  ],
                                ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _openFilePage(
    BuildContext context,
    String filename,
    String fileContent,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => GistFilePage(
          fileContent: fileContent,
          filename: filename,
        ),
      ),
    );
  }
}
