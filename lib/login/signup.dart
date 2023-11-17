import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double s_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Signup',
          style: TextStyle(
              color: Color(0xFF171725),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body:SingleChildScrollView(
        child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  height: s_height * 0.6,
                  width: size * 0.9,
                  color: Colors.white,
                  child: Image.asset('assets/images/signup_img.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  // height: constraints.maxHeight * 0.40,
                  // width: constraints.maxWidth,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Enter your phone number',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'We need to verify you. We will send you a one-time authorization code. ',
                        style: TextStyle(
                            color: Color(0xFF92929D),
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                        textAlign: TextAlign.left,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 4, right: 4, top: 20, bottom: 20),
                        child: TextField(
                          textAlign: TextAlign.start,
                          scrollPadding: EdgeInsets.all(0.0),
                          decoration: InputDecoration(
                            constraints: const BoxConstraints(maxHeight:50),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              hintText: 'Enter Mobile Number',
                              prefixIcon: const Icon(
                                  Icons.phone_android_rounded,
                                  color: Color(0xFF92929D))),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                     const SizedBox(height: 40,)
                     , ElevatedButton(
                          style: ButtonStyle(
                              minimumSize: MaterialStatePropertyAll<Size>(
                                  Size(size, 44)),
                            // maximumSize: MaterialStatePropertyAll<Size>(
                            //   Size(size,50)
                            // ),
                              backgroundColor:
                                  const MaterialStatePropertyAll<Color>(
                                      Color(0xFF2ECC71))),
                          onPressed: () {},
                          child: const Text(
                            'Submit',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16),
                          ))
                    ],
                  ),
                )
              ],
            ),
      ),
    );
  }
}
