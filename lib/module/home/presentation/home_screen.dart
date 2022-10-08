import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:photo_editor/core/bloc/bloc_status.dart';
import 'package:photo_editor/core/component/snackbar/info_snackbar.dart';
import 'package:photo_editor/core/route/app_route_name.dart';
import 'package:photo_editor/core/theme/app_color.dart';
import 'package:photo_editor/module/home/presentation/cubit/home_cubit.dart';
import 'package:photo_editor/module/home/presentation/widget/collection_widget.dart';
import 'package:photo_editor/module/home/presentation/widget/photo_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        repo: GetIt.I.get(),
      )
        ..getCollection()
        ..getPhotos(),
      child: const HomeLayout(),
    );
  }
}

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  final refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        /// listener for pull request
        if (state.collectionStatus == BlocStatus.success &&
            state.photosStatus == BlocStatus.success) {
          if (refreshController.isRefresh) {
            refreshController.refreshCompleted();
          }
          if (refreshController.isLoading) {
            refreshController.loadComplete();
          }
        }

        if (state.collectionStatus == BlocStatus.error ||
            state.photosStatus == BlocStatus.error) {
          if (refreshController.isRefresh) {
            refreshController.refreshCompleted();
          }
          if (refreshController.isLoading) {
            refreshController.loadComplete();
          }

          showInfoSnackBar(context, "Something went wrong, please try again!");
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SmartRefresher(
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
            onRefresh: () {
              context.read<HomeCubit>().getCollection(showLoading: false);
              context.read<HomeCubit>().getPhotos(showLoading: false);
            },
            enablePullDown: true,
            onLoading: () {
              context.read<HomeCubit>().getNextPhotos();
            },
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  floating: true,
                  centerTitle: false,
                  title: Text(
                    "Discover",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  backgroundColor: Theme.of(context).backgroundColor,
                  elevation: 0,
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(76),
                    child: Container(
                      height: 76,
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRouteName.search);
                        },
                        child: Container(
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.search,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "Search keyword, nature",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: CollectionWidget(),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      "Popular Images",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  sliver: PhotosWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
