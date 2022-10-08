import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/core/bloc/download_status.dart';
import 'package:photo_editor/core/component/dialog/loading_dialog.dart';
import 'package:photo_editor/core/component/dialog/success_dialog.dart';
import 'package:photo_editor/core/component/snackbar/info_snackbar.dart';
import 'package:photo_editor/core/extension/string_extension.dart';
import 'package:photo_editor/core/route/app_route_name.dart';
import 'package:photo_editor/core/theme/app_color.dart';
import 'package:photo_editor/module/detail_photo/presentation/cubit/detail_photo_cubit.dart';
import 'package:photo_editor/module/home/model/photo/photo_model.dart';

class DetailPhotoScreen extends StatelessWidget {
  const DetailPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailPhotoCubit(),
      child: const DetailPhotoLayout(),
    );
  }
}

class DetailPhotoLayout extends StatefulWidget {
  const DetailPhotoLayout({super.key});

  @override
  State<DetailPhotoLayout> createState() => _DetailPhotoLayoutState();
}

class _DetailPhotoLayoutState extends State<DetailPhotoLayout> {
  late PhotoItemModel photo;

  @override
  void didChangeDependencies() {
    photo = ModalRoute.of(context)?.settings.arguments as PhotoItemModel;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<DetailPhotoCubit, DetailPhotoState>(
      listener: (context, state) {
        if (state.shareStatus == DownloadStatus.downloading) {
          showLoadingDialog(context);
        }
        if (state.shareStatus == DownloadStatus.success) {
          Navigator.pop(context);
        }

        if (state.downloadStatus == DownloadStatus.downloading) {
          showLoadingDialog(context);
        }
        if (state.downloadStatus == DownloadStatus.success) {
          Navigator.pop(context);
          showSuccessDialog(context, "Success Download!");
        }

        if (state.shareStatus == DownloadStatus.failed ||
            state.downloadStatus == DownloadStatus.failed) {
          Navigator.pop(context);
          showInfoSnackBar(
            context,
            "Something wrong when downloading photo, please try again!",
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            splashRadius: 20,
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Theme.of(context).textTheme.headlineLarge?.color,
            ),
          ),
          centerTitle: false,
          title: Text(
            "Detail Photo",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          actions: [
            IconButton(
              onPressed: () {
                context.read<DetailPhotoCubit>().sharePhoto(photo.src.large);
              },
              splashRadius: 20,
              icon: Icon(
                CupertinoIcons.share,
                color: Theme.of(context).textTheme.headlineLarge?.color,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.66,
              child: Image(
                image: NetworkImage(
                  photo.src.original,
                ),
                fit: BoxFit.cover,
                loadingBuilder: (_, widget, progress) {
                  if (progress == null) {
                    return widget;
                  }

                  return Image(
                    image: NetworkImage(photo.src.portrait),
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                    errorBuilder: (_, __, ___) {
                      return const Center(
                        child: Icon(
                          Icons.broken_image_sharp,
                          color: Colors.blueGrey,
                        ),
                      );
                    },
                  );
                },
                errorBuilder: (_, __, ___) {
                  return Center(
                    child: Icon(
                      Icons.broken_image_rounded,
                      color: AppColor.primaryColor,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).padding.bottom,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            photo.photographer,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 16),
                          if (photo.alt != null &&
                              photo.alt?.isNotEmpty == true) ...[
                            Text(
                              photo.alt ?? "",
                              style: Theme.of(context).textTheme.bodyMedium,
                              maxLines: 2,
                            ),
                            const SizedBox(height: 16),
                          ],
                          Row(
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  shape: BoxShape.circle,
                                  color: photo.avgColor.toColor(),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                photo.avgColor,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                AppRouteName.editPhoto,
                                arguments: photo,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: Text(
                              "Edit Photo",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 16),
                          OutlinedButton.icon(
                            onPressed: () {
                              context
                                  .read<DetailPhotoCubit>()
                                  .downloadPhoto(photo.src.original);
                            },
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.all(16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            icon: Icon(
                              CupertinoIcons.cloud_download,
                              color: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.color,
                            ),
                            label: Text(
                              "Download",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
