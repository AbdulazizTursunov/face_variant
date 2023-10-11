import 'package:face_variant/data/fake_data.dart';
import 'package:face_variant/data/home_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PlaceCubit extends Cubit<List<HomeModel>> {
  PlaceCubit() : super(homeModelData);

  void changeCategory(List<HomeModel> newPlaces) {
    emit(newPlaces);
  }

  void search(String newPlaces) {
    emit(homeModelData
        .where((element) =>
            element.tuman.toLowerCase().contains(newPlaces.toLowerCase()))
        .toList());
  }

  void searchMak(String searchTitle){
    emit(homeModelData
        .where((element) =>
        element.tuman.toLowerCase().contains(searchTitle.toLowerCase()))
        .toList());
  }
}
