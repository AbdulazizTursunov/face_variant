import 'package:face_variant/business_logic/cubits/category_cubit/category_cubit.dart';
import 'package:face_variant/business_logic/cubits/place_cubit/place_cubit.dart';
import 'package:face_variant/data/categories.dart';
import 'package:face_variant/data/fake_data.dart';
import 'package:face_variant/presentaion/tab_box/home_screen/sub_screens/detail_screen.dart';
import 'package:face_variant/presentaion/tab_box/home_screen/widget/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:face_variant/data/home_model.dart';
import 'package:face_variant/utils/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();

  changeCategory() {}

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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [

            controller.text.isNotEmpty
                ? const SizedBox(height: 0)
                : const SizedBox(height: 20),
            controller.text.isNotEmpty
                ? const Text('')
                : CategoryWidget(callback: () {}),
            controller.text.isNotEmpty
                ? const SizedBox(height: 0)
                : const SizedBox(height: 20),
            BlocListener<CategoryCubit, int>(
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
                  return Expanded(
                    child: state.isEmpty
                        ? const Center(child: Text("Malumot topilmadi"))
                        : ListView.builder(
                            itemCount: state.length,
                            itemBuilder: (context, int index) {
                              debugPrint('${CategoryWidget(callback: () {
                                controller.text;
                              })}');
                              return GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailScreen(),
                                      ));
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
            )
          ],
        ),
      ),
    );
  }
}
// SizedBox(
// height: 40,
// child: TextField(
// controller: controller,
// onChanged: context.read<PlaceCubit>().search,
// keyboardType: TextInputType.name,
// textInputAction: TextInputAction.search,
// cursorHeight: 16,
// decoration: InputDecoration(
// filled: true,
// hintText: 'search...',
// hintStyle: const TextStyle(fontSize: 14),
// suffixIcon: const Icon(Icons.search),
// fillColor: Colors.teal.withOpacity(0.0),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(12),
// ),
// ),
// ),
// ),