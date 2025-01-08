import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_listitle.dart';
import 'widgets/about_dialog_widget.dart';
import 'widgets/about_listtile_widget.dart';
import 'widgets/alery_dialog_widget.dart';
import 'widgets/banner_widget.dart';
import 'widgets/material_banner_widget.dart';
import 'widgets/preferred_sized_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App widgets'),
      ),
      body: Column(
        children: [
          CustomListitle(
            title: 'About Dialog',
            subTitle: 'Its show information about your app',
            onTap: () {
              Get.to(() => AboutDialogWidget());
            },
          ),
          CustomListitle(
            title: 'About List tile',
            subTitle: 'Its show information about your app',
            onTap: () {
              Get.to(() => AboutListtileWidget());
            },
          ),
          CustomListitle(
            title: 'Alery Dialog',
            subTitle: 'Its an alert dialog',
            onTap: () {
              Get.to(() => AleryDialogWidget());
            },
          ),
          CustomListitle(
            title: 'Material Banner',
            subTitle: 'Its an banner ',
            onTap: () {
              Get.to(() => MaterialBannerWidget());
            },
          ),
          CustomListitle(
            title: 'Preferred Size',
            subTitle: 'Used to create own AppBar',
            onTap: () {
              Get.to(() => PreferredSizedWidget());
            },
          ),
          CustomListitle(
            title: 'Bottom Sheet',
            subTitle: 'Used to create bottom sheet',
            onTap: () {
              Get.to(() => BottomSheetWidget());
            },
          ),
        ],
      ),
    );
  }
}
