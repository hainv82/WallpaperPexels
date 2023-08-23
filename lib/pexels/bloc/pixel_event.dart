import 'package:z_core/pexels/bloc/pixel_state.dart';

class PixelEvent{
  PixelEvent();
}

class GetSlugEvent extends PixelEvent{
  final String nonParam;

  GetSlugEvent({required this.nonParam});
}

class GetTrendEvent extends PixelEvent{
  final String scrKey;

  GetTrendEvent({required this.scrKey});
}
class GetTrendByHostEvent extends PixelEvent{

  GetTrendByHostEvent();
}

class CheckCollectionEvent extends PixelEvent{

  CheckCollectionEvent();
}

class GetTopByHostEvent extends PixelEvent{

  GetTopByHostEvent();
}

class GetDiscoverByHostEvent extends PixelEvent{

  GetDiscoverByHostEvent();
}

class GetChallengeByHostEvent extends PixelEvent{

  GetChallengeByHostEvent();
}
class SetTitleWhenPageChange extends PixelEvent{

  final String newTitle;

  SetTitleWhenPageChange({required this.newTitle});
}

class GetBaseDataEvent extends PixelEvent{

  GetBaseDataEvent();
}

class GetListUriCollectionEvent extends PixelState{
  final String uri;

  const GetListUriCollectionEvent({required this.uri});
}

