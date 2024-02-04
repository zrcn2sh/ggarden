import 'package:flutter/material.dart';
import 'package:ggarden/screens/home_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  final TextEditingController controller = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 200, left: 20, right: 20),
        child: Column(children: [
          const Text(
            'g r u z a k',
            style: TextStyle(
                fontSize: 40,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w100),
          ),
          TextField(
            controller: controller,
            decoration: const InputDecoration(labelText: 'Enter ID'),
            keyboardType: TextInputType.emailAddress,
          ),
          TextField(
            controller: controller2,
            decoration: const InputDecoration(labelText: 'Enter password'),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 40,
          ),
          ButtonTheme(
              minWidth: 90.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () async {
                  if (controller.text == 'admin' &&
                      controller2.text == '1234') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomeScreen()));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(154, 193, 240, 1)),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 35.0,
                ),
              ))
        ]),
      ),
    );
  }
}
