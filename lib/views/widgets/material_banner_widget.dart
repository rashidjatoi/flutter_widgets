import 'package:flutter/material.dart';

class MaterialBannerWidget extends StatelessWidget {
  const MaterialBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                padding: EdgeInsets.all(20),
                content: Text('Subscribe!'),
                leading: Icon(Icons.notifications_active_outlined),
                elevation: 5,
                actions: [
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    },
                    child: Text('Dismiss'),
                  )
                ],
              ),
            );
          },
          child: Text('Material Banner'),
        ),
      ),
    );
  }
}
