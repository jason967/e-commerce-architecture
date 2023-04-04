import 'package:bloc/bloc.dart';

enum StoreType { beauty, market }

class StoreTypeCubit extends Cubit<StoreType> {
  StoreTypeCubit() : super(StoreType.market);

  void tappedTypeChangeBtn(StoreType target) => emit(target);
}
