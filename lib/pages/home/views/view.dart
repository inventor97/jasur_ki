import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:jasur_ki/helpers/GeneralHelpers.dart';
import 'package:jasur_ki/widgets/textfield.dart';
import '../controllers/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyTextField(
                          ctrl: controller.ctrl1,
                          label: "faylni ko'rsating",
                          inputType: TextInputType.none,
                          autofocus: true,
                          validator: GeneralHelpers.validateUserName,
                          obscureText: false),
                    )),
                Flexible(
                    flex: 2,
                    child: ElevatedButton(
                        onPressed: controller.pickFile,
                        child: const Text(
                          "Shifrlanishi kerak bo'lgan fayl",
                          textAlign: TextAlign.center,
                        )))
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyTextField(
                          ctrl: controller.ctrl2,
                          label: "faylni ko'rsating",
                          inputType: TextInputType.none,
                          autofocus: true,
                          validator: GeneralHelpers.validateUserName,
                          obscureText: false),
                    )),
                Flexible(
                    flex: 2,
                    child: ElevatedButton(
                        onPressed: controller.pickSignedFile,
                        child: const Text(
                          "Shifrlangan fayl addressi",
                          textAlign: TextAlign.center,
                        )))
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Form(
                  key: controller.formKey,
                  child: ElevatedButton(
                    onPressed: controller.sign,
                    child: const Text(
                      "fayl matnini shifrlash",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                Flexible(
                  child: Form(
                    key: controller.formKey2,
                    child: ElevatedButton(
                      onPressed: controller.checkRSASign,
                      child: const Text(
                        "faylni qayta deshifrlash",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
