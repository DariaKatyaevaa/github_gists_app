import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_gists_app/presentation/pages/home/cubit/gist_list_cubit.dart';
import 'package:github_gists_app/presentation/pages/home/cubit/gist_list_state.dart';
import 'package:github_gists_app/presentation/pages/home/widgets/gist_list_item.dart';
import 'package:github_gists_app/presentation/di/injector.dart';
import 'package:github_gists_app/presentation/pages/gist_info/gist_info_page.dart';
import 'package:github_gists_app/domain/entities/gist.dart';
import 'package:github_gists_app/presentation/theme/theme_cubit.dart';

class GistListWidget extends StatefulWidget {
  const GistListWidget({super.key});

  @override
  State<GistListWidget> createState() => _GistListWidgetState();
}

class _GistListWidgetState extends State<GistListWidget> {
  final GistListCubit _cubit = i.get<GistListCubit>();
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _cubit.loadGists();
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          _cubit.loadGists();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GistListCubit, GistListState>(
      bloc: _cubit,
      builder: (context, state) {
        var gists = List<Gist>.empty(growable: true);
        var isLoading = false;

        if (state is GistListLoadingState) {
          gists = state.oldGists;
          isLoading = true;
        } else if (state is GistListLoadedState) {
          gists = state.gists;
        }

        return state is GistListErrorState
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state.errorMessage,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    IconButton(
                      onPressed: _cubit.loadGists,
                      icon: Icon(
                        Icons.refresh,
                        size: 32.0,
                        color: Theme.of(context).textTheme.titleMedium!.color,
                      ),
                    )
                  ],
                ),
              )
            : RefreshIndicator(
                onRefresh: _cubit.refresh,
                backgroundColor: Theme.of(context).primaryColor,
                color: context.read<ThemeCubit>().state.themeMode == ThemeMode.dark ? Colors.white : null,
                child: state is GistListInitialState || (gists.isEmpty && state is GistListLoadingState)
                    ? Container()
                    : ListView.builder(
                        controller: _scrollController,
                        shrinkWrap: true,
                        itemCount: gists.length + (isLoading ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (index < gists.length) {
                            final gist = gists[index];
                            return GistListItem(
                              gistName: gist.title,
                              userAvatarUrl: gist.user.avatarUrl,
                              userName: gist.user.userName,
                              openGistInfo: () => _openGistInfo(context, gist),
                            );
                          }
                          _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
                          return _loadingIndicator();
                        },
                      ),
              );
      },
    );
  }

  void _openGistInfo(BuildContext context, Gist gist) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => GistInfoPage(gist: gist),
      ),
    );
  }

  Widget _loadingIndicator() {
    return const Center(
      child: SizedBox(
        width: 20.0,
        height: 20.0,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
