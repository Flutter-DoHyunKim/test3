import 'package:flutter/material.dart';
import 'package:test3/const.dart';

class MysteryWidget extends StatelessWidget {
  const MysteryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 206,
      padding: const EdgeInsets.symmetric(vertical: spacingM),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: spacingM),
        scrollDirection: Axis.horizontal,
        children: [
          fourPackWidget(context),
          const SizedBox(
            width: spacingM,
          ),
          sixPackWidget(context),
          const SizedBox(
            width: spacingM,
          ),
          fourPackWidget(context),
        ],
      ),
    );
  }

  SizedBox fourPackWidget(BuildContext context) {
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
                      width: 1, color: const Color.fromRGBO(237, 236, 237, 1))),
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
                      return squareBox();
                    }),
              ),
            ),
          ),
          stringWidget(0, context),
        ],
      ),
    );
  }

  SizedBox sixPackWidget(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Container(
              padding:const EdgeInsets.all(spacingBase),
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                      width: 1, color: const Color.fromRGBO(237, 236, 237, 1))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      /*Column(
                        children: [
                          rectBox(),
                          const SizedBox(height: spacingBase,),
                          rectBox(),
                        ],
                      ),
                      const SizedBox(width: spacingBase,),*/
                      squareBox(),
                    ],
                  ),
                 
                  Row(
                    children: [
                      squareBox(),
                     /* const SizedBox(width: spacingBase,),
                      Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          rectBox(),

                          rectBox(),
                        ],
                      )*/
                    ],
                  ),
                  Expanded(child: Container(height: spacingBase,color: Colors.red,)),
                ],
              ),
            ),
          ),
          stringWidget(1, context),
        ],
      ),
    );
  }

  Column stringWidget(int index, BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
                child: Text(
              mysteryStrings[index],
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: const Color.fromRGBO(85, 77, 86, 1)),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ))
          ],
        ),
        const SizedBox(height: spacingBase),
        Row(
          children: [
            Expanded(
              child: Text(
                mysterySubStrings[index],
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ],
    );
  }

  ClipRRect squareBox() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        width: 54,
        height: 54,
        color: const Color.fromRGBO(254, 207, 51, 1),
      ),
    );
  }

  ClipRRect rectBox() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Container(
        width: 54,
        height: 25,
        color: const Color.fromRGBO(254, 207, 51, 1),
      ),
    );
  }
}
