import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../Utils/app_color.dart';
import '../../Utils/utils.dart';
import 'otp_verification_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var maskFormatter = MaskTextInputFormatter(
      mask: '### #### ####',
      filter: { "#": RegExp(r'[0-9]') },
      type: MaskAutoCompletionType.lazy
  );
  TextEditingController phoneNumberController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Center(
            child: SvgPicture.asset(
              "assets/icons/Logo.svg",
              placeholderBuilder: (BuildContext context) => Container(
                padding: const EdgeInsets.all(30.0),
                child: const CircularProgressIndicator(),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("One Plan For All Your Plans", style: TextStyle()),
          const SizedBox(
            height: 40,
          ),
          Expanded(
              child: Card(
            // color: Colors.green,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                          text: "Welcome",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                                text: " Naswiz",
                                style: TextStyle(color: AppColor.primary))
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Phone Number",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          readOnly: true,
                          controller: TextEditingController(text: "+91"),
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        flex: 4,
                        child: TextFormField(
                          controller: phoneNumberController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            maskFormatter
                          ],
                          decoration: const InputDecoration(
                              hintText: "987 6544 3210",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    if(phoneNumberController.text.isEmpty)
                      {
                        DeviceUtils.toastMessage("Please Enter Valid Mobile Number");
                      }
                    else
                      {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OtpVerificationScreen(phoneNumber: phoneNumberController.text,)));
                      }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 45),
                    backgroundColor: AppColor.primary
                  ),
                      child: const Text("CONTINUE"),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
