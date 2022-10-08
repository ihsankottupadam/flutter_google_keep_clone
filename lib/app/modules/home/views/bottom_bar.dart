import 'package:flutter/material.dart';

import '../../../../core/values/colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: MyColors.NavBarColor,
      notchMargin: 7,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.check_box_outlined),
            tooltip: 'New list note',
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mic_none_outlined),
              tooltip: 'New auio note'),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.image_outlined),
              tooltip: 'New image note')
        ],
      ),
    );
  }
}
