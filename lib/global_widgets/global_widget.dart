
import 'package:flutter/material.dart';
import '../../../utils/app_color.dart';
import '../../../utils/constant.dart';

class GlobalButtons extends StatefulWidget {
  const GlobalButtons({Key? key, required this.title, required this.callback})
      : super(key: key);
  final String title;
  final VoidCallback callback;

  @override
  State<GlobalButtons> createState() => _GlobalButtonsState();
}

class _GlobalButtonsState extends State<GlobalButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue,
        ),
        child: InkWell(
          onTap: widget.callback,
          child:  Padding(
            padding:  const EdgeInsets.all(20.0),
            child: Center(
                child: Text(
                  widget.title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: AppColors.white),
                )),
          ),
        ),
      ),
    );
  }
}
