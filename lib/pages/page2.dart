import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwoContent extends StatelessWidget {
  const PageTwoContent({super.key});

  @override
  Widget build(BuildContext context) {
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
            onPressed: () => Get.back(),
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
}
