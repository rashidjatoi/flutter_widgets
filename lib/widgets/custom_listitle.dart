import 'package:flutter/material.dart';

class CustomListitle extends StatelessWidget {
  final String title;
  final String subTitle;
  final void Function()? onTap;

  const CustomListitle({
    super.key,
    this.onTap,
    required this.subTitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
