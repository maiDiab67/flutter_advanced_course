import 'package:flutter_advanced_course/features/home/data/repo/home_repo.dart';
import 'package:flutter_advanced_course/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (data) {
        emit(HomeState.specializationsSuccess(data));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationsError(errorHandler));
      },
    );
  }
}
