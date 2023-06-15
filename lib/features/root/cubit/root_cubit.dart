import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit() : super(RootState.inital());

  void _barItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(state.copyWith(navbarItem: NavbarItem.home, index: 0));
        break;
      case NavbarItem.map:
        emit(state.copyWith(navbarItem: NavbarItem.map, index: 1));
        break;
      case NavbarItem.rides:
        emit(state.copyWith(navbarItem: NavbarItem.rides, index: 2));
        break;
      case NavbarItem.myTicket:
        emit(state.copyWith(navbarItem: NavbarItem.rides, index: 3));
        break;
      case NavbarItem.account:
        emit(state.copyWith(navbarItem: NavbarItem.rides, index: 4));
        break;
      default:
    }
  }

  void getNavbarItem(int index) {
    switch (index) {
      case 0:
        _barItem(NavbarItem.home);
        break;
      case 1:
        _barItem(NavbarItem.map);
        break;
      case 2:
        _barItem(NavbarItem.rides);
        break;
      case 3:
        _barItem(NavbarItem.myTicket);
        break;
      case 4:
        _barItem(NavbarItem.account);
        break;

      default:
    }
  }
}
