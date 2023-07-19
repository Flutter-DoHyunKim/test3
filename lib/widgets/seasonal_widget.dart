import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test3/const.dart';

class SeasonalWidget extends StatelessWidget {
  const SeasonalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 203,
      padding: const EdgeInsets.symmetric(vertical: spacingM),
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: spacingM),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              width: 1,
                              color: const Color.fromRGBO(237, 236, 237, 1))),
                      child: Padding(
                        padding: const EdgeInsets.all(spacingBase),
                        child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: 4,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, //1개 행 개수
                              childAspectRatio: 1, //가로/세로
                              mainAxisSpacing: spacingBase, //horizontal Padding
                              crossAxisSpacing: spacingBase, //vertical Padding
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: SizedBox(
                                  width: 54,
                                  height: 54,
                                  child: Image.network(
                                    'https://picsum.photos/${Random().nextInt(9)*100}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        seasonalStrings[index],
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: const Color.fromRGBO(85, 77, 86, 1)),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 21,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Row(children: [
                          Image.asset('assets/icons/star.png'),
                          const SizedBox(
                            width: 3.5,
                          ),
                          Text(
                            popularStarStrings[index],
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Image.asset('assets/icons/clock.png'),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            popularTimeStrings[index],
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: spacingS,
            );
          },
          itemCount: 5),
    );
  }
}
