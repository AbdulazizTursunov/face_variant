import 'package:flutter/material.dart';


class PriceLocation extends StatelessWidget {
  const PriceLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Uy hamiqa ma\'lumot',style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontSize: 22, fontWeight: FontWeight.w500)),
          Text('2 000 000', style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontSize: 22, fontWeight: FontWeight.w600))
        ],),
    );
  }
}
