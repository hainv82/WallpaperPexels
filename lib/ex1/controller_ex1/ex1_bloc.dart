import 'dart:async';

import 'package:bloc/src/bloc.dart';
import 'package:z_core/ex1/controller_ex1/ex1_event.dart';
import 'package:z_core/ex1/controller_ex1/ex1_state.dart';
import 'package:z_core/ex1/model/req/login_req.model.dart';
import 'package:z_core/ex1/model/req/register_req.model.dart';
import 'package:z_core/ex1/repository/ex1_regis_repo.dart';
import 'package:z_core/ex1/usecase/login.usecase.dart';
import 'package:z_core/ex1/usecase/regis.usecase.dart';
import 'package:z_core/zcore/lib/bloc/bloc.core.dart';
import 'package:z_core/zcore/lib/exception/error_handle.dart';
import 'package:z_core/zcore/sample_exception/src/sample_exception.dart';

class  Ex1Bloc extends CoreBloc<EX1Event, EX1State>{
  Ex1Bloc(initialState) : super(initialState){
  // Ex1Bloc(initialState, handle) : super(initialState, errorHandle: handle){
    on<OnRegisEvent>(_onRegis);
    on<OnLoginEvent>(_onLogin);
    // add( InitData());

  }


  @override
  void onErrorResolve(SampleException exception, bool resolved, {result}) {
    // TODO: implement onErrorResolve
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
  }
  @override
  Future<void> close() {
    return super.close();
  }

  void _onRegis(OnRegisEvent event, Emitter<EX1State> emit) async {
    final email=event.emailRegis;
    final password=event.passRegis;
    print('==call regis: ${email} - ${password}');
    final res2=await RegisterRepo().regis(RegisterUserRequest(email:email,password: password));
    emit(state.copyWith(id: '${res2.id}', tokenResgis: res2.token));
    print('---onBloc: ${res2.token}');

  }

  void _onLogin(OnLoginEvent event, Emitter<EX1State> emit) async {
    final email =event.emailLogin;
    final password=event.passLogin;
    print('==call login: ${email} - ${password}');
    final res=await RegisterRepo().login(LoginRequest(email: email, password: password));
    print('---onBloc: ${res.token}');
    emit(state.copyWith(tokenLog: res.token));

  }
}