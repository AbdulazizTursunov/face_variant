import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utils/app_color.dart';

class ChangeThemeButton extends StatefulWidget {
  const ChangeThemeButton(
      {Key? key, required this.callback, required this.title})
      : super(key: key);

  final VoidCallback callback;
  final String title;

  @override
  State<ChangeThemeButton> createState() => _ChangeThemeButtonState();
}

class _ChangeThemeButtonState extends State<ChangeThemeButton> {

  bool _changeTheme = false;


  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          widget.title,
          style: Theme
              .of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: AppColors.black),
        ),
        trailing: CupertinoSwitch(
          activeColor: CupertinoColors.activeBlue,
          trackColor: CupertinoColors.inactiveGray,
          thumbColor: CupertinoColors.white,
          value: _changeTheme,
          onChanged: (value) {
            setState(() {
              _changeTheme = value;
            });
            widget.callback.call();
          },
        ),
    );
  }
}
