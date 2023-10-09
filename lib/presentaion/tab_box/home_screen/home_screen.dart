import 'package:face_variant/data/face_data.dart';
import 'package:face_variant/presentaion/tab_box/home_screen/widget/category_widget.dart';
import 'package:flutter/material.dart';
import '../../../data/home_model.dart';
import '../../../utils/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<HomeModel> houses = List.from(homeModelData);

  void updateList(String value) {
    setState(() {
      houses = homeModelData
          .where((element) =>
              element.location.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
centerTitle: true,
          elevation: 0,
          backgroundColor: AppColors.white,
          title: Text('Houses',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold))),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(children: [

TextField(
  onChanged: (value)=>updateList(value),
  keyboardType: TextInputType.name,
  textInputAction: TextInputAction.search,
  decoration: InputDecoration(
    filled:true,
    hintText: 'search...',
    suffixIcon: Icon(Icons.search),
    fillColor: Colors.teal.withOpacity(0.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),

    ),
  ),
),
          SizedBox(height: 20),
          CategoryWidget(callback: () {}),
          SizedBox(height: 20),
          Expanded(
              child: houses.isEmpty
                  ? Center(child: Text("Malumot topilmadi"))
                  : ListView.builder(
                      itemCount: houses.length,
                      itemBuilder: (context, int index) {
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: houses[index].image,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Location: ${houses[index].location}',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                'price: ${houses[index].price.toString()}',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                'Description: ${houses[index].description}',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.subTitleColor),
                              ),
                              const SizedBox(height: 20)
                            ]);
                      }))
        ]),
      ),
    );
  }
}

// GlobalTextField(
// onChanged: (value)=>updateList(value),
// prefixIcon: const IconData(58727, fontFamily: 'MaterialIcons'),
// hintText: 'Search....',
// keyboardType: TextInputType.name,
// textInputAction: TextInputAction.search,
// caption: '',
// ),

// actions: [
//   IconButton(
//       onPressed: () async {
//         await showSearch(
//           context: context,
//           delegate: CustomSearchDelegate(),
//         );
//       },
//       icon: Icon(
//         Icons.search,
//         color: Colors.black,
//         size: 30,
//       ))
// ],
