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
    log('---resImg: ${res.listTrend?.length}');
    emit(state.copyWith(listTrend: res.listTrend));
  }
}