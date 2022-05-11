import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ytadvanced/cubit/app_cubit_state.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits() : super(InitialState()){
    emit(WelcomeState());
  }

}