import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'ex1_state.g.dart';

@CopyWith()
class EX1State extends Equatable{
  final String tokenResgis;
  final String tokenLog;
  final String id;


  const EX1State({required this.tokenResgis, required this.tokenLog, required this.id});

  @override
  // TODO: implement props
  List<Object?> get props => [tokenResgis, tokenLog, id];
}