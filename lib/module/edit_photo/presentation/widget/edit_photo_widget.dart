import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/core/theme/app_color.dart';
import 'package:photo_editor/module/edit_photo/presentation/cubit/edit_photo_cubit.dart';
import 'package:photo_editor/module/home/model/photo/photo_model.dart';

class EditPhotoWidget extends StatelessWidget {
  const EditPhotoWidget({
    super.key,
    required this.photo,
  });

  final PhotoItemModel photo;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        OriginalImage(photo: photo),

        ///
        ComponentLayer(),
      ],
    );
  }
}

class OriginalImage extends StatelessWidget {
  const OriginalImage({
    super.key,
    required this.photo,
  });

  final PhotoItemModel photo;

  @override
  Widget build(BuildContext context) {
    return Image(
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
    );
  }
}

class ComponentLayer extends StatelessWidget {
  const ComponentLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditPhotoCubit, EditPhotoState>(
      buildWhen: (p, c) {
        return p.opacityLayer != c.opacityLayer || p.widgets != c.widgets;
      },
      builder: (context, state) {
        return Stack(
          fit: StackFit.expand,
          children: [
            /// opacity layer
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(state.opacityLayer),
              ),
            ),

            ///
            for (var i = 0; i < state.widgets.length; i++)
              Align(
                key: UniqueKey(),
                alignment: Alignment.center,
                child: state.widgets[i],
              ),
          ],
        );
      },
    );
  }
}
