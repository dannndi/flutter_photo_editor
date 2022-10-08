import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showSuccessDialog(BuildContext context, [String? message]) {
  showDialog(
    context: context,
    builder: (_) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Icon(
                CupertinoIcons.check_mark_circled,
                color: Colors.green,
                size: 86,
              ),
            ),
            if (message != null) ...[
              Text(
                message,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 32)
            ]
          ],
        ),
      );
    },
  );
}
