import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasicAppBar extends AppBar {
  BasicAppBar({
    bool centerTitle = true,
    bool automaticallyImplyLeading = true,
    Icon leadingIcon = const Icon(Icons.close, color: Colors.black),
    String title = '',
    Function onLeadingTap,
  }) : super (
    centerTitle: centerTitle,
    automaticallyImplyLeading: automaticallyImplyLeading,
    leading: IconButton(
      icon: leadingIcon,
      onPressed: onLeadingTap == null ? () => Get.back() : () {},
    ),
    title: Text('$title', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600)),
    elevation: 0.0,
  );
}
