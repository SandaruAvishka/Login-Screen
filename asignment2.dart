import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var emailControlle = TextEditingController();
  var pwdilControlle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // First column: Image

          Image.asset(
            'assests/coffee1.png',
            height: 200,
            width: 200,
          ),

          // Second column: "Welcome back" text and TextFields
          const SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: ListView(
              padding: const EdgeInsets.all(30),
              children: [
                const SizedBox(height: 120),
                const Text(
                  "Welcome back",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextFormField(
                  controller: emailControlle,
                  decoration: const InputDecoration(
                    prefix: Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    hintText: "Email/phone number",
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: pwdilControlle,
                  decoration: const InputDecoration(
                    prefix: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    hintText: "Password",
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(
                        unselectedWidgetColor:
                            Colors.pink, // Your desired border color
                      ),
                      child: Checkbox(
                        value: false,
                        onChanged: (value) {
                          // ...
                        },
                      ),
                    ),
                    const Text(
                      "Remeber me ",
                      style: TextStyle(color: Colors.pink),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Forget Password",
                            style: TextStyle(color: Colors.pink))),
                  ],
                ),
                // ...other content from your second column
              ],
            ),
          ),
          // Third column: Elements from top to bottom
          const SizedBox(height: 70),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // Elevated button
                SizedBox(
                  width: 270,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(6), // Smaller radius value
                      ),
                    ),
                    child: const Text("Login"),
                  ),
                ),

                // Separator (optional)
                const SizedBox(height: 20),
                // "or Login with" text and social media icons
                const Text(
                  "or Login with",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      const SizedBox(width: 10),
                      Image.asset(
                        'assests/k8tjaxoh.bmp',
                        height: 40,
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        'assests/9j0a5ef8.bmp',
                        height: 40,
                      ),
                      Image.asset(
                        'assests/linked.png',
                        height: 30,
                      ),
                    ],
                  ),
                ),
                // Separator (optional)
                const SizedBox(height: 10),
                // Sign-up text and button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {}, // Implement sign up logic
                      child: const Text("Sign up",
                          style: TextStyle(color: Colors.pink)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
