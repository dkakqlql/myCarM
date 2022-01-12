import 'package:bloc/bloc.dart';
import 'package:tutorial/cubit/app_cubit_states.dart';
import 'package:tutorial/model/data_model.dart';
import 'package:tutorial/services/data_services.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}) : super(InitialState()){
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  Future<void> getData() async {
    try{
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    }catch(e){
      print(e);
    }
  }

  detailPage(DataModel data){
    emit(DetailState(data));
  }

  goHome(){
    emit(LoadedState(places));
  }
}