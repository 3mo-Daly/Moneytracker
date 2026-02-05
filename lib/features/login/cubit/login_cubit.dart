import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_team_project/features/login/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(IntialState(paramater: ''));

  void addEmail(String email) {
    emit(AddState(paramater: email));
  }

  void addPass(String pass) {
    emit(AddState(paramater: pass));
  }
}
