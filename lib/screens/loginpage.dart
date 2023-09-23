import 'package:fashion_store/screens/registerpage.dart';
import 'package:flutter/material.dart';

class Fashionlogin extends StatelessWidget {
  final eml = TextEditingController();
  final pass = TextEditingController();

  Fashionlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            const Text(
              "sign in",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Hi welcome back,you've been missed"),
            const SizedBox(
              height: 40,
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
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",style: TextStyle(color: Colors.brown),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.brown,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                    child: const Text("Sign In",style: TextStyle(fontSize: 15),)),
              ),
            ),
            SizedBox(height: 40,),
            const Text("----------or sign in with----------"),
            SizedBox(height: 30,),
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
            SizedBox(height: 30,),
            Row(
              children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 85),
                     child: Text("Already have an account?"),
                   ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FashionRegisteroage()));
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
      ),
    );
  }
}
