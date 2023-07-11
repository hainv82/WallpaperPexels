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