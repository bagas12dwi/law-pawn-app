import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfController extends GetxController{
  RxString searchText = ''.obs; // Observable variable for search text
  late PdfViewerController pdfViewerController;
  Rx<PdfTextSearchResult?> searchResult = Rx<PdfTextSearchResult?>(null);
  RxInt currentSearchIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    pdfViewerController = PdfViewerController(); // Initialize PdfViewerController
  }

  @override
  void onClose() {
    pdfViewerController.dispose();
    super.onClose();
  }

  void searchInPdf() async {
    if (searchText.value.isNotEmpty) {
      final result = await pdfViewerController.searchText(searchText.value); // Perform search
      searchResult.value = result;
      currentSearchIndex.value = 0;
    }
  }

  void nextInstance() {
    if (searchResult.value != null &&
        searchResult.value!.totalInstanceCount > 0 &&
        currentSearchIndex.value < searchResult.value!.totalInstanceCount - 1) {
      currentSearchIndex.value++;
      searchResult.value!.nextInstance();
    }
  }

  void previousInstance() {
    if (searchResult.value != null &&
        searchResult.value!.totalInstanceCount > 0 &&
        currentSearchIndex.value > 0) {
      currentSearchIndex.value--;
      searchResult.value!.previousInstance();
    }
  }
}