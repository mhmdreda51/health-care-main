import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nurses_state.dart';

class NursesCubit extends Cubit<NursesState> {
  NursesCubit() : super(NursesInitial());
}
