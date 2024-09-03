import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.onRetry, this.title, this.message});
  final VoidCallback onRetry;
  final String? title;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title ?? "Error Occured!"),
            if (message != null) Text(message!),
            SizedBox(height: 20),
            TextButton(
              onPressed: onRetry,
              child: Text("Retry"),
            )
          ],
        ),
      ),
    );
  }
}
