import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../Utils/app_color.dart';
import '../home_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String phoneNumber;

  const OtpVerificationScreen({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  OtpFieldController otpController = OtpFieldController();

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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: RichText(
                        text: const TextSpan(
                            text: "Verify Your",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                  text: " Number",
                                  style: TextStyle(color: AppColor.primary))
                            ]),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        "+91 ${widget.phoneNumber}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Please enter the 6-digit code received by SMS or SMS/Whatsapp.It may take few",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    OTPTextField(
                      length: 6,
                      width: MediaQuery.of(context).size.width,
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      onChanged: (pin) {},
                      controller: otpController,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                      onCompleted: (pin) {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {

                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize:
                              Size(MediaQuery.of(context).size.width, 45),
                          backgroundColor: AppColor.primary),
                      child: const Text("CONTINUE"),
                    ),
                    const SizedBox(height: 20,),
                    const Center(
                      child: Text("Resend Code",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black
                      ),),
                    )
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
