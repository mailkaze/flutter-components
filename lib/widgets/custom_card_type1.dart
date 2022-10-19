import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.save_as_sharp,
            color: AppTheme.primary,
          ),
          title: Text('soy un titulo'),
          subtitle: Text(
              'fnuwie fui bfui iuf hiufh wuigh rui hguierhguih eruigh euhge   h  h ruih ureh uh h ugher uhger ughr uhgui hugerihguer hgu'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancel')),
              TextButton(onPressed: () {}, child: Text('OK')),
            ],
          ),
        )
      ]),
    );
  }
}
