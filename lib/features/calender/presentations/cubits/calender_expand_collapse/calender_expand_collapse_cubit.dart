import 'package:bloc/bloc.dart';

class CalenderExpandCollapseCubit extends Cubit<bool> {
  CalenderExpandCollapseCubit() : super(false);

  void expandOrCollapse() => emit(!state);
}
