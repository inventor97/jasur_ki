import 'dart:io';

import 'package:crypton/crypton.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../../BaseController.dart';

class HomeController extends BaseController {

  final RSAKeypair rsaKeypair = RSAKeypair.fromRandom();

  TextEditingController ctrl1 = TextEditingController();
  TextEditingController ctrl2 = TextEditingController();

  TextEditingController pNumCtrl = TextEditingController();
  TextEditingController qNumCtrl = TextEditingController();

  TextEditingController dSecureNumCtrl = TextEditingController();
  TextEditingController nSecureNumCtrl = TextEditingController();

  FilePickerResult? picker;
  FilePickerResult? signPicker;

  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  late File file;
  late File signedFile;

  void pickFile() async {
    picker = await FilePicker.platform.pickFiles();

    if (picker != null) {
      file = File(picker?.files.single.path ?? "");
      ctrl1.text = file.path;
    } else {
      Logger().e("File not chosen");
    }
  }

  void sign() async {
    if (formKey.currentState!.validate()) {
      try {
        await signedFile.writeAsString(rsaKeypair.publicKey.encrypt(await file.readAsString()));
        Get.defaultDialog(title: "RSA Imzo", content: const Text("Tanlangan fayl kiritilgan parametrlar asosida imzolandi", textAlign: TextAlign.center));
      } catch (e) {
        Get.defaultDialog(title: "Xatolik", content: const Text("Faylni o'qishda xatolik yoki imzolangan fayl addresida xatolik", textAlign: TextAlign.center));
      }
    }
  }

  void checkRSASign() async{
    if (formKey2.currentState!.validate()) {
      try {
        rsaKeypair.privateKey.decrypt(await signedFile.readAsString());
        Get.defaultDialog(title: "RSA imzoni Tekshirish", content: const Text("Fayl o'zgartirilmagan imzo to'g'ri"));
      } catch(e) {
        Get.defaultDialog(title: "Xatolik", content: const Text("Imzolangan fayl o'zgartirilgan", textAlign: TextAlign.center));
      }
    }
  }

  void pickSignedFile() async {
    signPicker = await FilePicker.platform.pickFiles();

    if (signPicker != null) {
      signedFile = File(signPicker?.files.single.path ?? "");
      ctrl2.text = signedFile.path;
    } else {
      Logger().e("File not chosen");
    }
  }
}
