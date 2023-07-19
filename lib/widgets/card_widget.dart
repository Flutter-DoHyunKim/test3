import 'package:flutter/material.dart';
import 'package:test3/const.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    super.key,
    required this.size,
    required this.spacing,
  });

  final Size size;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      width: size.width,
      // height: 270,
      decoration: const BoxDecoration(
        image: DecorationImage(image: NetworkImage('https://picsum.photos/500',),fit: BoxFit.cover),
      ),
      child:  Padding(
        padding:   EdgeInsets.symmetric(horizontal: spacing),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 144,),
            Row(
              children: [
                const ImageIcon(AssetImage('assets/icons/location.png'),color: Color.fromRGBO(255, 255, 255, 1),),
                const SizedBox(width: 9,),
                Text('San Francisco, CA',style: Theme.of(context).textTheme.titleSmall,)
              ],
            ),
            const SizedBox(height: 14,),
            Text('Good afternoon.\nTake a break from work.',style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: spacingXl),
          ],
        ),
      ),
    );
  }
}