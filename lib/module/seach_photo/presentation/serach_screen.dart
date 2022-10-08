import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get_it/get_it.dart';
import 'package:photo_editor/core/bloc/bloc_status.dart';
import 'package:photo_editor/core/component/snackbar/info_snackbar.dart';
import 'package:photo_editor/core/route/app_route_name.dart';
import 'package:photo_editor/core/theme/app_color.dart';
import 'package:photo_editor/module/seach_photo/presentation/cubit/search_cubit.dart';
import 'package:photo_editor/module/seach_photo/repository/search_repository.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchCubit>(
      create: (context) => SearchCubit(repo: GetIt.I.get<SearchRepository>()),
      child: const SearchLayout(),
    );
  }
}

class SearchLayout extends StatefulWidget {
  const SearchLayout({super.key});

  @override
  State<SearchLayout> createState() => _SearchLayoutState();
}

class _SearchLayoutState extends State<SearchLayout> {
  final refreshController = RefreshController();
  final keywordController = TextEditingController();
  String? initialKeyword;

  @override
  void didChangeDependencies() {
    initialKeyword = ModalRoute.of(context)?.settings.arguments as String?;

    if (initialKeyword == null) return;
    if (initialKeyword?.isNotEmpty ?? false) {
      keywordController.text = initialKeyword ?? "";
      context.read<SearchCubit>().onKeywordChange(keywordController.text);
      context.read<SearchCubit>().searchPhotos();
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          iconSize: 20,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Theme.of(context).textTheme.headlineLarge?.color,
          ),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        title: TextField(
          controller: keywordController,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "e.g : Winter",
            hintStyle: Theme.of(context).textTheme.bodyMedium,
          ),
          style: Theme.of(context).textTheme.bodyLarge,
          autofocus: initialKeyword != null ? false : true,
          textInputAction: TextInputAction.search,
          onChanged: context.read<SearchCubit>().onKeywordChange,
          onSubmitted: (_) {
            context.read<SearchCubit>().searchPhotos();
          },
        ),
        actions: [
          BlocBuilder<SearchCubit, SearchState>(
            buildWhen: (p, c) => p.keyword != c.keyword,
            builder: (context, state) {
              if (state.keyword.isEmpty) {
                return const SizedBox();
              }
              return IconButton(
                onPressed: () {
                  keywordController.clear();
                  context.read<SearchCubit>().clearKeyword();
                },
                icon: Icon(
                  Icons.close,
                  color: Theme.of(context).textTheme.headlineLarge?.color,
                ),
              );
            },
          ),
        ],
        elevation: 1,
      ),
      body: BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {
          /// listen when pull to request success
          if (state.photosStatus == BlocStatus.success) {
            if (refreshController.isRefresh) {
              refreshController.refreshCompleted();
            }
            if (refreshController.isLoading) {
              refreshController.loadComplete();
            }
          }

          /// listen when pull to request error
          if (state.photosStatus == BlocStatus.error) {
            if (refreshController.isRefresh) {
              refreshController.refreshCompleted();
            }
            if (refreshController.isLoading) {
              refreshController.loadComplete();
            }

            showInfoSnackBar(
              context,
              "Something went wrong, please try again!",
            );
          }
        },
        builder: (context, state) {
          if (state.photosStatus == BlocStatus.initial) {
            return const SizedBox();
          }
          if (state.photosStatus != BlocStatus.success &&
              state.photos.isEmpty) {
            return const PhotosLoading();
          }

          return SmartRefresher(
            controller: refreshController,
            header: CustomHeader(
              builder: (context, mode) {
                if (mode == RefreshStatus.idle) {
                  return const SizedBox();
                }
                return Center(
                  child: SizedBox(
                    width: 32,
                    height: 32,
                    child: CircularProgressIndicator(
                      color: AppColor.primaryColor,
                      strokeWidth: 2,
                    ),
                  ),
                );
              },
            ),
            footer: CustomFooter(
              builder: (context, mode) {
                if (mode == LoadStatus.idle) {
                  return const SizedBox();
                }
                return Center(
                  child: SizedBox(
                    width: 32,
                    height: 32,
                    child: CircularProgressIndicator(
                      color: AppColor.primaryColor,
                      strokeWidth: 2,
                    ),
                  ),
                );
              },
            ),
            enablePullUp: true,
            enablePullDown: true,
            onRefresh: context.read<SearchCubit>().searchPhotos,
            onLoading: context.read<SearchCubit>().getNextPhotos,
            child: GridView.custom(
              padding: const EdgeInsets.all(16),
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: const [
                  QuiltedGridTile(2, 1),
                  QuiltedGridTile(1, 1),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRouteName.detailPhoto,
                        arguments: state.photos[index],
                      );
                    },
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image(
                          image: NetworkImage(
                            state.photos[index].src.portrait,
                          ),
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) {
                            return Center(
                              child: Icon(
                                Icons.broken_image_rounded,
                                color: AppColor.primaryColor,
                              ),
                            );
                          },
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.black, Colors.transparent],
                              begin: Alignment.bottomCenter,
                              end: Alignment.center,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          right: 16,
                          bottom: 16,
                          child: Text(
                            state.photos[index].photographer,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.white),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: state.photos.length,
              ),
            ),
          );
        },
      ),
    );
  }
}

class PhotosLoading extends StatelessWidget {
  const PhotosLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: const [
          QuiltedGridTile(2, 1),
          QuiltedGridTile(1, 1),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.white,
            child: Container(
              color: Colors.white,
            ),
          );
        },
        childCount: 8,
      ),
    );
  }
}
