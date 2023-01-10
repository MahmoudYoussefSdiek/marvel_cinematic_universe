import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'data_controller_state.dart';

class DataControllerCubit extends Cubit<DataControllerState> {
  DataControllerCubit() : super(DataControllerInitial());
}
