import 'package:flutter/material.dart';
import '../../../utils/app_color.dart';

class GlobalButton extends StatefulWidget {
  const GlobalButton({Key? key, required this.title, required this.callback})
      : super(key: key);
  final String title;
  final VoidCallback callback;

  @override
  State<GlobalButton> createState() => _GlobalButtonState();
}

class _GlobalButtonState extends State<GlobalButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.teal),
          borderRadius:const BorderRadius.only(
              topLeft: Radius.circular(4),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(4))),
      child: ListTile(
        title: Text(widget.title,style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.black),),
        onTap: widget.callback,
        trailing:const Icon(Icons.integration_instructions),
      ),
    );
  }
}
