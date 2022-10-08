import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/core/bloc/bloc_status.dart';
import 'package:photo_editor/core/route/app_route_name.dart';
import 'package:photo_editor/core/theme/app_color.dart';
import 'package:photo_editor/module/home/presentation/cubit/home_cubit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';

class PhotosWidget extends StatelessWidget {
  const PhotosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state.photosStatus != BlocStatus.success && state.photos.isEmpty) {
          return const PhotosLoading();
        }

        return SliverGrid(
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
          delegate: SliverChildBuilderDelegate(
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
        );
      },
    );
  }
}

class PhotosLoading extends StatelessWidget {
  const PhotosLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
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
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.white,
            child: Container(
              color: Colors.white,
            ),
          );
        },
        childCount: 4,
      ),
    );
  }
}
