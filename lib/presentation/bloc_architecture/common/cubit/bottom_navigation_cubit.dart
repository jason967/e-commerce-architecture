import 'package:bloc/bloc.dart';

enum BottomNavi { home, category, search, user }

class BottomNavigaionCubit extends Cubit<BottomNavi> {
  BottomNavigaionCubit() : super(BottomNavi.home);

  void tappedNavigationBtn(BottomNavi target) => emit(target);
}

extension BottomNaviEx on BottomNavi {
  String get toName {
    switch (this) {
      case BottomNavi.home:
        return '홈';
      case BottomNavi.category:
        return '카테고리';
      case BottomNavi.search:
        return '검색';
      case BottomNavi.user:
        return '회원정보';
    }
  }
}
