import 'package:flutter/material.dart';

import '../../../../../utils/app_color.dart';

class CosialShare extends StatelessWidget {
  const CosialShare(
      {Key? key,
        required this.title,
        required this.subtitle,
        required this.callback})
      : super(key: key);
  final String title;
  final String subtitle;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 10),
        Ink(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.subTitleColor),
              borderRadius: BorderRadius.circular(8)),
          child: InkWell(
            onTap: callback,
            child: Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        )
      ],
    );
  }
}
