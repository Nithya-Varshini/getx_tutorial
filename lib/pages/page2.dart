import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwoContent extends StatelessWidget {
  const PageTwoContent({super.key});

  @override
  Widget build(BuildContext context) {
    Get.snackbar(
      "Hey i'm a Get SnackBar!", // title
      "It's unbelievable! I'm using SnackBar without context, without boilerplate, without Scaffold, it is something truly amazing!", // message
      icon: Icon(Icons.alarm),
      shouldIconPulse: true,
      onTap: (GetSnackBar snackbar) {},
      barBlur: 20,
      isDismissible: true,
      duration: Duration(seconds: 3),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text('Page Two'),
          ),
          ElevatedButton(
            onPressed: () => Get.back(result: 'success'),
            child: const Text('Back with success'),
          ),
          ElevatedButton(
              onPressed: () => Get.back(result: 'failure'),
              child: const Text('Back with failure')),
        ],
      ),
    );
  }
}
