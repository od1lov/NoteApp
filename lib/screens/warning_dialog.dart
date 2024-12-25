// import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
// import 'package:note_app/model/note_model.dart';
// import 'package:note_app/bloc/note_bloc.dart';

class WarningDialog extends StatefulWidget {
  const WarningDialog({
    super.key,
    required this.onSuccess,
    required this.title,
  });
  final VoidCallback onSuccess;
  final String title;

  @override
  State<WarningDialog> createState() => _WarningDialogState();
}

class _WarningDialogState extends State<WarningDialog> {
  TextEditingController noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Icon(Icons.warning_amber_outlined),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('No'),
          ),
          TextButton(
            onPressed: () {
              widget.onSuccess();
              Navigator.pop(context);
            },
            child: Text('Yes'),
          ),
        ],
        content: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ));
    // }
  }
}
