import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff0F172A), Color(0xff1E293B), Color(0xff334155)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),

                const Text(
                  "Create\nAccount",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  "Build beautiful Flutter apps faster.",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 40),

                Container(
                  padding: const EdgeInsets.all(22),

                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(28),
                  ),

                  child: Column(
                    children: [
                      buildField(hint: "Full Name", icon: Icons.person_outline),

                      const SizedBox(height: 18),

                      buildField(
                        hint: "Email Address",
                        icon: Icons.email_outlined,
                      ),

                      const SizedBox(height: 18),

                      buildField(
                        hint: "Phone Number",
                        icon: Icons.phone_outlined,
                      ),

                      const SizedBox(height: 18),

                      buildField(hint: "Username", icon: Icons.alternate_email),

                      const SizedBox(height: 18),

                      buildField(
                        hint: "City",
                        icon: Icons.location_city_outlined,
                      ),

                      const SizedBox(height: 18),

                      buildField(hint: "Country", icon: Icons.flag_outlined),

                      const SizedBox(height: 18),

                      buildField(
                        hint: "Password",
                        icon: Icons.lock_outline,
                        isPassword: true,
                      ),

                      const SizedBox(height: 18),

                      buildField(
                        hint: "Confirm Password",
                        icon: Icons.lock_reset_outlined,
                        isPassword: true,
                      ),

                      const SizedBox(height: 25),

                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (_) {}),

                          Expanded(
                            child: Text(
                              "I agree to the Terms & Conditions",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 25),

                      SizedBox(
                        width: double.infinity,
                        height: 58,

                        child: ElevatedButton(
                          onPressed: () {},

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),

                          child: const Text(
                            "Create Account",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),

                            child: Text(
                              "OR",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                          ),

                          Expanded(
                            child: Divider(
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 25),

                      socialButton("Continue with Google", Icons.g_mobiledata),

                      const SizedBox(height: 15),

                      socialButton("Continue with Apple", Icons.apple),

                      const SizedBox(height: 30),
                    ],
                  ),
                ),

                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildField({
    required String hint,
    required IconData icon,
    bool isPassword = false,
  }) {
    return TextField(
      obscureText: isPassword,

      style: const TextStyle(color: Colors.white),

      decoration: InputDecoration(
        hintText: hint,

        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),

        prefixIcon: Icon(icon, color: Colors.white70),

        filled: true,

        fillColor: Colors.white.withOpacity(0.05),

        contentPadding: const EdgeInsets.symmetric(vertical: 20),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),

          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.4),
            width: 1.5,
          ),
        ),
      ),
    );
  }

  Widget socialButton(String text, IconData icon) {
    return Container(
      width: double.infinity,
      height: 58,

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(18),

        border: Border.all(color: Colors.white.withOpacity(0.08)),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 28),

          const SizedBox(width: 10),

          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
