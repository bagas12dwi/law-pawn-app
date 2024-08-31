import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:get/get.dart';

class KonsultasiController extends GetxController {
  var senderName = ''.obs;
  var senderEmail = ''.obs;
  var subject = ''.obs;

  Future<void> sendEmail() async {
    final email = Email(
      body: 'Pengirim: ${senderName.value}\nEmail: ${senderEmail.value}',
      subject: subject.value,
      recipients: ['bag12dwi.s@gmail.com'],
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(email);
      Get.snackbar('Sukses', 'Email berhasil dikirim');
    } catch (error) {
      Get.snackbar('Error', 'Gagal mengirim email: $error');
      print(error);
    }
  }
}