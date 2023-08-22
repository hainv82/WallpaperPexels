
import 'dart:developer';

import 'package:z_core/helper/app_config.dart';
import 'package:z_core/helper/resource_enpoint.dart';
import 'package:z_core/pexels/model/res/base_data.model.dart';
import 'package:z_core/pexels/model/res/check_collection_data.model.dart';
import 'package:z_core/pexels/model/res/data_image_host.model.dart';
import 'package:z_core/pexels/model/res/discover_data.model.dart';
import 'package:z_core/pexels/model/res/trend/data_trend.model.dart';
import 'package:z_core/pexels/repository/pixel_repo.dart';
import 'package:z_core/zcore/gateway2/api_gateway2.dart';
import 'package:z_core/zcore/gateway2/app_gateway2.dart';
import 'dart:convert';


class PixelRepoImpl extends PixelRepository {
  @override
  Future<DiscoverData> getDiscover() async {
    final api = AppGateway2(
        endpoint: ePointDiscover(),
        prefix: basePixel(),
        method: HTTPMethod.get);
    var response = await api.execute();
    return DiscoverData.fromJson(response.data);
  }

  @override
  Future<List<DataTrend>> getDataTrend({required String secretKey}) async{
    Map<String, dynamic> header = {"Secret-Key": secretKey};
    final api = AppGateway2(
        endpoint: ePointTrending(),
        prefix: basePixel(),
        method: HTTPMethod.get,
        header: header);
    var res=await api.execute();
    final listData=(res.data as Map<String, dynamic>)['data'] as List;
    return listData.map((e) => DataTrend.fromJson(e)).toList();
    // final response = await apiGateway.execute();
    // final data = ((response.data as Map<String, dynamic>)['data']
    // as Map<String, dynamic>)['data'] as List;
    // return data.map((e) => HistoryPrescriptionModel.fromJson(e)).toList();
  }

  @override
  Future<DataImageHost> getImgTrend() async {
    final api=AppGateway2(endpoint: ePointTrend(), prefix: baseHost(), method: HTTPMethod.get);
    var res=await api.execute();
    // final list=(res.data as Map<String, dynamic>)["listTrend"] as List;
    final data=DataImageHost.fromJson(res.data);
    return data;
  }

  @override
  Future<BaseData> getBaseData() async{
    final api=AppGateway2(endpoint: ePointBaseDate(), prefix: baseHost(), method: HTTPMethod.get);
    var res=await api.execute();
    log("===res: $res");
    final data=BaseData.fromJson(res.data);
    return data;
  }

  @override
  Future<DataImageHost> getImgChallenge() async {
    final api=AppGateway2(endpoint: ePointChallenge(), prefix: baseHost(), method: HTTPMethod.get);
    var res=await api.execute();
    final data=DataImageHost.fromJson(res.data);
    return data;
  }

  @override
  Future<DataImageHost> getImgDiscover() async {
    final api=AppGateway2(endpoint: ePointDiscoverHost(), prefix: baseHost(), method: HTTPMethod.get);
    var res=await api.execute();
    final data=DataImageHost.fromJson(res.data);
    return data;
  }

  @override
  Future<DataImageHost> getImgTop() async {
    final api=AppGateway2(endpoint: ePointTop(), prefix: baseHost(), method: HTTPMethod.get);
    var res=await api.execute();
    final data=DataImageHost.fromJson(res.data);
    return data;
  }

  @override
  Future<CheckCollectionData> checkCollection() async {
    final api=AppGateway2(endpoint: ePointCollection2(), prefix: baseHost(), method: HTTPMethod.get);
    var res=await api.execute();
    final data=CheckCollectionData.fromJson(res.data);
    log('===collection : ${data.appName}');
    return data;
  }
}
