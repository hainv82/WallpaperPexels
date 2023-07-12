import 'dart:async';
import 'dart:developer';

import 'package:bloc/src/bloc.dart';
import 'package:z_core/pexels/bloc/pixel_event.dart';
import 'package:z_core/pexels/bloc/pixel_state.dart';
import 'package:z_core/pexels/repository/pixel_repo_impl.dart';
import 'package:z_core/pexels/repository/pixel_repo.dart';
import 'package:z_core/zcore/lib/bloc/bloc.core.dart';
import 'package:z_core/zcore/sample_exception/src/sample_exception.dart';

class PixelBloc extends CoreBloc<PixelEvent, PixelState>{
  PixelBloc(initialState) : super(initialState){
    // on((event, emit) => null)
   on<GetSlugEvent>(_onGetSlug);
   on<GetTrendEvent>(_onGetTrend);
   on<GetTrendByHostEvent>(_onGetTrendByHost);
   on<GetTopByHostEvent>(_onGetTopByHost);
   on<GetDiscoverByHostEvent>(_onGetDiscoverByHost);
   on<GetChallengeByHostEvent>(_onGetChallengeByHost);
   on<SetTitleWhenPageChange>(_onSetTitleWhenPageChange);

  }

  @override
  void onErrorResolve(SampleException exception, bool resolved, {result}) {
    // TODO: implement onErrorResolve
  }

  void _onGetSlug(GetSlugEvent event, Emitter<PixelState> emit) async {
    final res = await PixelRepoImpl().getDiscover();
    emit(state.copyWith(slugEng:'${res.pageProps?.enUS}'));
  }

  void _onGetTrend(GetTrendEvent event, Emitter<PixelState> emit) async {
    final res=await PixelRepoImpl().getDataTrend(secretKey: event.scrKey);
    log('---log: ${res[0].id}');
    emit(state.copyWith(idTrend: res[0].id));
  }

  void _onGetTrendByHost(GetTrendByHostEvent event, Emitter<PixelState> emit) async {
    final res=await PixelRepoImpl().getImgTrend();
    log('---resImg: ${res.listImg?.length}');
    emit(state.copyWith(listTrend: res.listImg));
  }

  void _onGetTopByHost(GetTopByHostEvent event, Emitter<PixelState> emit) async {
    final res=await PixelRepoImpl().getImgTop();
    emit(state.copyWith(listTop: res.listImg));
  }

  void _onGetDiscoverByHost(GetDiscoverByHostEvent event, Emitter<PixelState> emit) async{
    final res=await PixelRepoImpl().getImgDiscover();
    emit(state.copyWith(listDiscover: res.listImg));
  }


  void _onGetChallengeByHost(GetChallengeByHostEvent event, Emitter<PixelState> emit) async{
    final res=await PixelRepoImpl().getImgChallenge();
    emit(state.copyWith(listChallenge: res.listImg));
  }

  void _onSetTitleWhenPageChange(SetTitleWhenPageChange event, Emitter<PixelState> emit) {
    emit(state.copyWith(title:event.newTitle));
  }
}