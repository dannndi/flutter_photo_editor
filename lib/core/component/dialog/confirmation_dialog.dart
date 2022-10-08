import 'package:flutter/material.dart';

Future<T?> showConfirmationDialog<T>(
  BuildContext context, {
  required String title,
  String? desc,
  String leftText = "Cancel",
  String rightText = "Discard",
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (desc != null)
              Text(
                desc,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(
              leftText,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text(
              rightText,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white),
            ),
          )
        ],
      );
    },
  );
}
