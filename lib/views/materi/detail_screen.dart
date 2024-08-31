import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:uud2/controllers/pdf_controller.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key});
  final PdfController controller = Get.put(PdfController());

  @override
  Widget build(BuildContext context) {
    final String pdfPath = Get.arguments ?? '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              _showSearchDialog(context);
            },
          ),
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_up),
            onPressed: () {
              controller.previousInstance();
            },
          ),
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_down),
            onPressed: () {
              controller.nextInstance();
            },
          ),
        ],
      ),
      body: SfPdfViewer.asset(
        pdfPath, // Path to your PDF asset
        controller: controller.pdfViewerController,
      ),
    );
  }

  void _showSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Search Text'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  controller.searchText.value = value; // Update observable variable
                },
                decoration: const InputDecoration(hintText: 'Enter text to search'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                controller.searchInPdf(); // Trigger search
                Navigator.of(context).pop();
              },
              child: const Text('Search'),
            ),
          ],
        );
      },
    );
  }
}
