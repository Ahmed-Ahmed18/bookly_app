import 'package:booky_app/core/utils/assetsData.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24,left: 24,top: 40,bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 18),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded, size: 28),
          ),
        ],
      ),
    );
  }
}
