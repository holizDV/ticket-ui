import 'package:flutter/material.dart';

import '../../../core/manager/font_manager.dart';
import '../../../core/manager/values_manager.dart';
import '../../../generate/gen/assets.gen.dart';
import '../../ticket%20&%20promo/page/detail_promo.dart';

class TicketPromoPage extends StatelessWidget {
  TicketPromoPage({super.key});

  final List<Map<String, dynamic>> tickets = [
    {
      "image": Assets.images.frame1.path,
      "title": "Ada Wahana Baru di Dufan! Mowgli's Jungle Race 4D Simulator",
      "date": "25 Mei 2023",
    },
    {
      "image": Assets.images.frame2.path,
      "title": "Prewedding at Ancol Taman Impian",
      "date": "25 Mei 2023",
    },
    {
      "image": Assets.images.frame3.path,
      "title":
          "Lihat Keajaiban Dufan di Fun Illusion Dufan Bersama Rocky Oktori & Yoko Ferostal",
      "date": "25 Mei 2023",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Tiket & Promo",
            style: Typograph.label16sm.copyWith(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: ListView.separated(
          itemCount: tickets.length,
          separatorBuilder: (_, __) => const SizedBox(height: AppSize.s16),
          padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p26, vertical: AppPadding.p16),
          itemBuilder: (context, index) {
            return _PromoCard(
              image: tickets[index]["image"],
              title: tickets[index]["title"],
              date: tickets[index]["date"],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPromoPage(
                      title: tickets[index]["title"],
                      image: tickets[index]["image"],
                      date: tickets[index]["date"],
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}

class _PromoCard extends StatelessWidget {
  const _PromoCard({
    required this.image,
    required this.title,
    required this.date,
    required this.onTap,
  });
  final String image;
  final String title;
  final String date;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            fit: BoxFit.fill,
            height: 160,
            width: double.maxFinite,
          ),
          const SizedBox(height: AppSize.s4),
          Text(
            title,
            style: Typograph.label10sm.copyWith(color: Colors.blue),
          ),
          Text(
            date,
            style: Typograph.label12sm.copyWith(
              color: Colors.blue,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
