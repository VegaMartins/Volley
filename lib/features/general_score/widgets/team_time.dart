import 'package:flutter/material.dart';
import '../../../core/themes/global_styles.dart';

class TeamTime extends StatelessWidget {
  const TeamTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,     
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0,),
          child: Text("0:24'90''", style: timeTextStyle),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text("0:14'23''", style: timeTextStyle),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text("0:35'04''", style: timeTextStyle),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text("0:11'29''", style: timeTextStyle),
        ),
      ],
    );
  }
}




