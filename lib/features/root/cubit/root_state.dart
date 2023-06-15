part of 'root_cubit.dart';

enum NavbarItem { home, map, rides, myTicket, account }

class RootState extends Equatable {
  const RootState({required this.navbarItem, required this.index});

  final NavbarItem navbarItem;
  final int index;

  factory RootState.inital() {
    return const RootState(navbarItem: NavbarItem.home, index: 0);
  }

  @override
  List<Object> get props => [navbarItem, index];

  RootState copyWith({
    NavbarItem? navbarItem,
    int? index,
  }) {
    return RootState(
      navbarItem: navbarItem ?? this.navbarItem,
      index: index ?? this.index,
    );
  }
}
