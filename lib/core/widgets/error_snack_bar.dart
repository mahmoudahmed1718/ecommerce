import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> buildErrorSnackBar(
  BuildContext context, {
  required String errorMessage,
}) {
  return ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(errorMessage)));
}
