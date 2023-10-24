import 'package:flutter/material.dart';

class Satagame extends StatefulWidget {
  const Satagame({super.key});

  @override
  State<Satagame> createState() => _SatagameState();
}

class _SatagameState extends State<Satagame> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/fun/Login.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Positioned(
              bottom: 15,
              left: 220,
              child: Column(
                children: [
                  Form(
                    key: _formkey,
                    child: Container(
                      height: 50,
                      color: Colors.transparent,
                      width: 340,
                      padding: const EdgeInsets.only(left: 5.0, right: 50.0),
                      child: TextFormField(
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        textAlignVertical: TextAlignVertical.bottom,
                        style: const TextStyle(color: Colors.white),
                        cursorColor: const Color(0xFF075E54),
                        decoration: InputDecoration(
                          counterText: "",
                          contentPadding: const EdgeInsets.only(bottom: 13.0),
                          prefixIcon: Container(
                              margin: const EdgeInsets.only(right: 8),
                              decoration: const BoxDecoration(
                                border: Border(
                                    right: BorderSide(color: Colors.white)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  "+91",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          suffixIcon: InkWell(
                            child: Container(
                                decoration: const BoxDecoration(
                                  // borderRadius: BorderRadius.circular(5),
                                  // color: Colors.green,
                                  border: Border(
                                      left: BorderSide(color: Colors.white)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 15, left: 10),
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),
                          ),
                          border: InputBorder.none,
                          hintText: 'Mobile Number',
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}