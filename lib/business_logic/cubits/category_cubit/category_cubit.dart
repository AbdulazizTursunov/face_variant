import 'package:flutter_bloc/flutter_bloc.dart';


class CategoryCubit extends Cubit<int> {
  CategoryCubit() : super(0);

  void changeCategory(int categoryIndex) {
    emit(categoryIndex);
  }
}
