import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/manager/color_manager.dart';
import '../../../core/manager/font_manager.dart';
import '../../../core/manager/values_manager.dart';
import '../../account/page/account_page.dart';
import '../../home/page/home_page.dart';
import '../../map/page/map_page.dart';
import '../../my_ticket/page/myticket_page.dart';
import '../../rides/page/rides_page.dart';
import '../cubit/root_cubit.dart';

class RootPage extends StatelessWidget {
  RootPage({super.key});

  final List<BottomNavigationBarItem> _navItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: "Beranda",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.map_outlined),
      label: "Peta",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.image_outlined),
      label: "Wahana",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.airplane_ticket_outlined),
      label: "Tiket Saya",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person_2_outlined),
      label: "Akun",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          if (state.navbarItem == NavbarItem.home) {
            return const HomePage();
          }
          if (state.navbarItem == NavbarItem.map) {
            return const MapPage();
          }
          if (state.navbarItem == NavbarItem.rides) {
            return const RidesPage();
          }
          if (state.navbarItem == NavbarItem.myTicket) {
            return const MyTicketPage();
          }
          if (state.navbarItem == NavbarItem.account) {
            return const AccountPage();
          }

          return const SizedBox.shrink();
        },
      ),
      bottomNavigationBar: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          return ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppPadding.p20),
              topRight: Radius.circular(AppPadding.p20),
            ),
            child: BottomNavigationBar(
              onTap: (index) => context.read<RootCubit>().getNavbarItem(index),
              items: _navItems,
              currentIndex: state.index,
              selectedItemColor: AppColors.blue,
              unselectedItemColor: AppColors.text,
              backgroundColor: Colors.white,
              selectedFontSize: FontSize.s12,
              unselectedFontSize: FontSize.s10,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
            ),
          );
        },
      ),
    );
  }
}
