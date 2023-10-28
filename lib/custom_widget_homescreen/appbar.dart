
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({Key? key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.grid_view_rounded,
          color: Colors.white,
        ),
      ),
      actions: [
        Container(
            margin: const EdgeInsets.only(right: 16),
            child: const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/check.JPG'),
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}


































