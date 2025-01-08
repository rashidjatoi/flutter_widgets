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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5,
      ),
      child: ListTile(
        onTap: onTap,
        tileColor: Colors.white10,
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
