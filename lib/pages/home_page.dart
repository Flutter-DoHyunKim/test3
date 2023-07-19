import 'package:flutter/material.dart';
import 'package:test3/const.dart';
import 'package:test3/widgets/card_widget.dart';
import 'package:test3/widgets/daily_widget.dart';
import 'package:test3/widgets/popular_widget.dart';
import 'package:test3/widgets/recommend_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      Size size = MediaQuery.of(context).size;
      return Material(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            CardContainer(size: size, spacing: spacingM),
            subSelectionTitle(context, 'Daily quests'),
            const SizedBox(
              height: 2,
            ),
            const DailyWidget(),
            const SizedBox(
              height: 1,
            ),
            subSelectionTitle(context, 'Popular items'),
            const PopularWidget(),
            subSelectionTitle(context, 'Recommended for you'),
            const RecommendWidget(),
            const SizedBox(
              height: 48,
            )
          ],
        ),
      );
    });
  }

  Padding subSelectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(
          left: spacingM, right: spacingM, bottom: spacingM, top: spacingXl),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          InkWell(child: Image.asset('assets/icons/btn-view-more.png')),
        ],
      ),
    );
  }
}
