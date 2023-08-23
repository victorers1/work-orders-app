import 'package:flutter/material.dart';

class WorkOrderSectionWidget extends StatelessWidget {
  const WorkOrderSectionWidget({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}
