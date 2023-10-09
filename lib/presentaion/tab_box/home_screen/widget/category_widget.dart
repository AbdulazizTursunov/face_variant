

import 'package:face_variant/data/categories.dart';
import 'package:flutter/material.dart';


class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key, required this.callback}) : super(key: key);
  final VoidCallback callback;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,int index){
            final category = categories[index];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Ink(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal),
                    borderRadius: BorderRadius.circular(20)),
                child: InkWell(
                  onTap: (){
                    debugPrint('${callback.toString()}');
                    callback.call();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(child: Text(category,style: Theme.of(context).textTheme.bodyLarge,),),
                  ),
                ),
              ),
            );
          }),
    );
  }
}


