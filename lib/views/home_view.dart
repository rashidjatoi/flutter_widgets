import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_listitle.dart';
import 'widgets/about_dialog_widget.dart';
import 'widgets/about_listtile_widget.dart';
import 'widgets/alery_dialog_widget.dart';
import 'widgets/banner_widget.dart';
import 'widgets/checkbox_listtile_widget.dart';
import 'widgets/cupertino_context_menu_widget.dart';
import 'widgets/interactive_widget.dart';
import 'widgets/long_press_dragable_widget.dart';
import 'widgets/material_banner_widget.dart';
import 'widgets/preferred_sized_widget.dart';
import 'widgets/reorder_listview_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App widgets'),
      ),
      body: ListView(
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
          CustomListitle(
            title: 'Long Press Dragable',
            subTitle: 'Used to drag widgets',
            onTap: () {
              Get.to(() => LongPressDragableWidget());
            },
          ),
          CustomListitle(
            title: 'Interactive Viewer',
            subTitle: 'Used to interact or zoom in to widgets',
            onTap: () {
              Get.to(() => InteractiveWidget());
            },
          ),
          CustomListitle(
            title: 'Reorderable ListView',
            subTitle: 'Used to reorder list',
            onTap: () {
              Get.to(() => ReorderListviewWidget());
            },
          ),
          CustomListitle(
            title: 'CheckBox ListTile',
            subTitle: 'Its is a check box',
            onTap: () {
              Get.to(() => CheckboxListtileWidget());
            },
          ),
          CustomListitle(
            title: 'Cupertino ContextMenu',
            subTitle: 'Buttoms used to show different actions',
            onTap: () {
              Get.to(() => CupertinoContextMenuWidget());
            },
          ),
          CustomListitle(
            title: 'Table',
            subTitle: 'Simple Table Widget',
            onTap: () {
              Get.to(() => CupertinoContextMenuWidget());
            },
          ),
        ],
      ),
    );
  }
}
