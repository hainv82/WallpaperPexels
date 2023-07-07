class EX1Event{
  EX1Event();
}

class OnRegisEvent extends EX1Event{
  final String emailRegis, passRegis;
  OnRegisEvent(this.emailRegis, this.passRegis);
}

class OnLoginEvent extends EX1Event{
  final String emailLogin, passLogin;
  OnLoginEvent(this.emailLogin, this.passLogin);
}

// class InitData extends EX1Event {
//   InitData();
// }
