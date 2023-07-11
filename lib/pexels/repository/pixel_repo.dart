import 'package:z_core/pexels/model/res/discover_data.model.dart';
import 'package:z_core/pexels/model/res/trend/data_trend.model.dart';

import '../model/res/trend/data_trend_host.model.dart';

abstract class PixelRepository{
  Future<DiscoverData> getDiscover();
  Future<List<DataTrend>> getDataTrend({required String secretKey});
  Future<DataTrendHost> getImgTrend();
}