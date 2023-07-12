import 'package:z_core/pexels/model/res/data_image_host.model.dart';
import 'package:z_core/pexels/model/res/discover_data.model.dart';
import 'package:z_core/pexels/model/res/trend/data_trend.model.dart';

import '../model/res/trend/data_trend_host.model.dart';

abstract class PixelRepository{
  Future<DiscoverData> getDiscover();
  Future<List<DataTrend>> getDataTrend({required String secretKey});
  Future<DataImageHost> getImgTrend();
  Future<DataImageHost> getImgTop();
  Future<DataImageHost> getImgDiscover();
  Future<DataImageHost> getImgChallenge();
}