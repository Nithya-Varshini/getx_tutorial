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
      body: InteractiveViewer(
        child: Column(
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
                child: const Text('Next Page')),
            ElevatedButton(
                onPressed: () async => {
                      data = await Get.toNamed('/table'),
                      c.title.value = data,
                    },
                child: const Text('Dynamic Table')),
            ElevatedButton(
                onPressed: () async => {
                      data = await Get.toNamed('/responsivetable'),
                      c.title.value = data,
                    },
                child: const Text('Responsive Table')),
            ElevatedButton(
                onPressed: () async => {
                      data = await Get.toNamed('/customtable'),
                      c.title.value = data,
                    },
                child: const Text('custom Table')),
            ElevatedButton(
                onPressed: () async => {
                      data = await Get.toNamed('/sortabletable'),
                      c.title.value = data,
                    },
                child: const Text('Sortable Table')),
          ],
        ),
      ),
    );
  }
}
