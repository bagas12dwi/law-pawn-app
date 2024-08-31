import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uud2/controllers/konsultasi_controller.dart';
import 'package:uud2/views/components/input_text_field.dart';

class KonsultasiScreen extends StatelessWidget {
  KonsultasiScreen({super.key});
  final KonsultasiController controller = Get.put(KonsultasiController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konsultasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputTextField(
              title: 'Nama Pengirim',
              onChanged: (value) => controller.senderName.value = value,
              keyboardType: TextInputType.text,
            ),
            InputTextField(
              title: 'Email Pengirim',
              onChanged: (value) => controller.senderEmail.value = value,
              keyboardType: TextInputType.emailAddress,
            ),
            InputTextFormField(
              onChanged: (value) => controller.subject.value = value,
              title: 'Perihal',
              minLines: 3,
              maxLines: 3,
              keyboardType: TextInputType.multiline,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.sendEmail,
              child: Text('Kirim Email'),
            ),
          ],
        ),
      ),
    );
  }
}
