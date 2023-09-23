import 'package:flutter/material.dart';

class FashionLoging extends StatelessWidget {
  final nme=TextEditingController();
  final eml=TextEditingController();
  final pass=TextEditingController();

  FashionLoging({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              const SizedBox(height: 5,),
              const Text("Create Account",
                style: TextStyle(fontSize: 30),),
              const SizedBox(height: 5,),
              const Text("Fill your information below for register"
                  "with your social account."),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(controller: nme,
                  decoration: InputDecoration(border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                    hintText: "Name",
                    labelText: "Name",

                  ),
                ),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(controller: eml,
                  decoration: InputDecoration(border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                    hintText: "Email",
                    labelText: "Email",

                  ),
                ),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration:InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "Password ",
                    labelText: "password",
                    suffixIcon: const Icon(Icons.visibility_off_sharp),

                  ) ,
                ),

              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.check_box)),
                  const Text("Agree with"),TextButton(onPressed: (){}, child: const Text("Terms & conditions"))

                ],


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
                      child: const Text("Sign up")),
                ),
              ),
              const Text("----------or sign up with----------"),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.apple_outlined)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.g_mobiledata_outlined)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.facebook_outlined)),

                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 140),
                    child: Text("Already have an account?"),
                  ),
                  TextButton(
                    onPressed: () {},
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

            ));


    }
}
