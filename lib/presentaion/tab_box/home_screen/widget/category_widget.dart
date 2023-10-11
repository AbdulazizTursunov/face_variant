import 'package:face_variant/business_logic/cubits/category_cubit/category_cubit.dart';
import 'package:face_variant/data/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key, required this.callback}) : super(key: key);
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, int index) {
          final category = categories[index];
          return InkWell(
            onTap: () {
              context.read<CategoryCubit>().changeCategory(index);
              debugPrint('${callback.toString()}');
              callback.call();
            },
            child: Ink(
              decoration: BoxDecoration(
                  color: context.watch<CategoryCubit>().state == index
                      ? Colors.red
                      : Colors.green,
                  border: Border.all(color: Colors.teal),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    category,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
