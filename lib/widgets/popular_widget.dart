import 'package:flutter/material.dart';
import 'package:test3/const.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 227,
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
                  Container(
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    height: 120,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage('https://picsum.photos/300'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/item1.png'),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                          child: Text(
                        popularStrings[index],
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: const Color.fromRGBO(85, 77, 86, 1)),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ))
                    ],
                  ),
                  const SizedBox(height: spacingBase),
                  Text(
                    popularSubStrings[index],
                    style: Theme.of(context).textTheme.bodyMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.start,
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
