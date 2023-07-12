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