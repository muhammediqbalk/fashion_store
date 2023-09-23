import 'package:fashion_store/screens/loginpage.dart';
import 'package:flutter/material.dart';

class FashionRegisteroage extends StatelessWidget {
  final nme = TextEditingController();
  final eml = TextEditingController();
  final pass = TextEditingController();

  FashionRegisteroage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        children: [
          const Text(
            "Create Account",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("Fill your information below for register"),
          const Text("with your social account."),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: nme,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: "Name",
                labelText: "Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: eml,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: "Email",
                labelText: "Email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: "Password ",
                labelText: "password",
                suffixIcon: const Icon(Icons.visibility_off_sharp),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.check_box)),
              const Text("Agree with"),
              TextButton(
                  onPressed: () {}, child: const Text("Terms & conditions"))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
              height: 43,
              width: 350,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Sign up",style: TextStyle(fontSize: 15),)),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("---------- or sign up with ----------"),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.apple_outlined)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.g_mobiledata_outlined)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.facebook_outlined)),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 80),
                child: Text("Already have an account?"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Fashionlogin()));
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.brown,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
