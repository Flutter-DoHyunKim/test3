import 'package:flutter/material.dart';
import 'package:test3/const.dart';

class DailyWidget extends StatelessWidget {
  const DailyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: spacingM),
      child: SizedBox(
        height: 120,
        child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: spacingM),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (BuildContext context,int index){
              return Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                width: 240,
                decoration:  BoxDecoration(
                  image: const DecorationImage(image: NetworkImage('https://picsum.photos/200'),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(6),
                ),
                child:Center(
                  child: SizedBox(
                    width: 192,
                    child: Text(
                      dailyStrings[index],style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );

            }, separatorBuilder: (BuildContext context,int index){
          return const SizedBox(width: spacingS,);
        }, itemCount: 5),
      ),
    );
  }
}