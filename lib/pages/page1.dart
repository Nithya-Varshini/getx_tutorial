import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx_new/pages/page2.dart';
import 'package:getx_new/utils/content.dart';

class PageOneContent extends StatelessWidget {
  const PageOneContent({super.key});

  @override
  Widget build(BuildContext context) {
    final Content c = Get.put(Content());
    var data;
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(c.title.value)),
      ),
      body: Column(
        children: [
          Center(
            child: Obx(() => Text(c.title.value)),
          ),
          ElevatedButton(
            onPressed: () => c.increment(),
            child: const Text('Increment'),
          ),
          ElevatedButton(
              onPressed: () async => {
                    data = await Get.toNamed('/second'),
                    c.title.value = data,
                  },
              child: const Text('Next Page'))
        ],
      ),
    );
  }
}
