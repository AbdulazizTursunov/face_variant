import 'package:face_variant/business_logic/cubits/category_cubit/category_cubit.dart';
import 'package:face_variant/business_logic/cubits/place_cubit/place_cubit.dart';
import 'package:face_variant/data/categories.dart';
import 'package:face_variant/data/fake_data.dart';
import 'package:face_variant/data/home_model.dart';
import 'package:face_variant/presentaion/tab_box/home_screen/widget/category_widget.dart';
import 'package:face_variant/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              onChanged: (va){
                context.read<PlaceCubit>().search(controller.text);
              },
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.search,
              cursorHeight: 16,
              focusNode: focusNode,
              decoration: InputDecoration(
                filled: true,
                hintText:controller.text.isNotEmpty? controller.text:'search...',
                hintStyle: const TextStyle(fontSize: 14),
                suffixIcon: const Icon(Icons.search),
                fillColor: Colors.teal.withOpacity(0.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            controller.text.isNotEmpty
                ? const SizedBox(height: 0)
                : const SizedBox(height: 20),
            controller.text.isNotEmpty
                ? const Text('')
                : CategoryWidget(callback: () {}),
            controller.text.isNotEmpty
                ? const SizedBox(height: 0)
                : const SizedBox(height: 20),
            controller.text.isEmpty? Expanded(
              child: ListView.builder(
                itemCount: searchTitle.length,
                itemBuilder: (context, index) {
                  final title = searchTitle[index];
                  return ListTile(
                    onTap: () {
                      context.read<PlaceCubit>().search(title);
                     setState(() {
                       controller.text = title;
                     });
                    },
                    title: Text(
                      title,
                      style:const TextStyle(color: AppColors.black, fontSize: 18),
                    ),
                  );
                },
              ),
            ):const Text(''),
          controller.text.isNotEmpty? BlocListener<CategoryCubit, int>(
              listener: (context, state) {
                if (state == 0) {
                  context.read<PlaceCubit>().changeCategory(homeModelData);
                } else {
                  context.read<PlaceCubit>().changeCategory(homeModelData
                      .where((element) => element.category == categories[state])
                      .toList());
                }
              },
              child: BlocBuilder<PlaceCubit, List<HomeModel>>(
                builder: (context, state) {
                  return state.isEmpty
                      ? const Center(child: Text("Malumot topilmadi"))
                      : Expanded(
                        child: ListView.builder(
                    itemCount: state.length,
                    itemBuilder: (context, int index) {
                        return GestureDetector(
                          onTap: () {
                            context.go('/detail');
                          },
                          child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: state[index].image,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Location: ${state[index].location}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  'price: ${state[index].price.toString()}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  'Description: ${state[index].category}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.subTitleColor),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  'Description: ${state[index].description}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.subTitleColor),
                                ),
                                const SizedBox(height: 20)
                              ]),
                        );
                    },
                  ),
                      );
                },
              ),
            ):const SizedBox(),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }
}
