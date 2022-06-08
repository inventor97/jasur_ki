import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:jasur_ki/helpers/GeneralHelpers.dart';
import 'package:jasur_ki/widgets/button.dart';
import 'package:jasur_ki/widgets/textfield.dart';
import '../controllers/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
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
                  Flexible(flex: 2, child: Button(title: "Fayl", onPressed: controller.pickFile, isFilled: true, isLoading: false))
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
                  Flexible(flex: 2, child: Button(title: "Imzolagan fayl", onPressed: controller.pickSignedFile, isFilled: true, isLoading: false))
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Form(
                      key: controller.formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Tub sonlar"),
                          const SizedBox(height: 20.0),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: MyTextField(
                                      ctrl: controller.qNumCtrl,
                                      label: "p son",
                                      inputType: TextInputType.number,
                                      autofocus: false,
                                      validator: GeneralHelpers.validatePrimeNumber,
                                      obscureText: false)),
                              const SizedBox(width: 20.0),
                              Expanded(
                                  flex: 1,
                                  child: MyTextField(
                                      ctrl: controller.pNumCtrl,
                                      label: "q son",
                                      inputType: TextInputType.number,
                                      autofocus: false,
                                      validator: GeneralHelpers.validatePrimeNumber,
                                      obscureText: false)),
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          Button(title: "Imzolah", onPressed: controller.sign, isFilled: true, isLoading: false),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    flex: 1,
                    child: Form(
                      key: controller.formKey2,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Maxfiy kalit"),
                          const SizedBox(height: 20.0),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: MyTextField(
                                      ctrl: controller.dSecureNumCtrl,
                                      label: "d son",
                                      inputType: TextInputType.number,
                                      autofocus: false,
                                      validator: GeneralHelpers.validatePrimeNumber,
                                      obscureText: false)),
                              const SizedBox(width: 20.0),
                              Expanded(
                                  flex: 1,
                                  child: MyTextField(
                                      ctrl: controller.nSecureNumCtrl,
                                      label: "n son",
                                      inputType: TextInputType.number,
                                      autofocus: false,
                                      validator: GeneralHelpers.validatePrimeNumber,
                                      obscureText: false)),
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          Button(title: "E-Imzoni tekshirish", onPressed: controller.checkRSASign, isFilled: true, isLoading: false),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
