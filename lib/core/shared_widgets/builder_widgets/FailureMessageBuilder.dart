import 'package:flutter/material.dart';

class FailureMessage extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback? onRetry;

  const FailureMessage(
      {Key? key,
      this.title = "Error Occured",
      this.message = "Error occured, please try again",
      this.onRetry})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(title, style: Theme.of(context).textTheme.headline6),
          SizedBox(height: 20),
          Text(message),
          SizedBox(height: 10),
          if (onRetry != null)
            TextButton.icon(
              onPressed: onRetry,
              icon: Icon(Icons.refresh_outlined),
              label: Text("Try again"),
            )
        ],
      ),
    ));
  }
}
