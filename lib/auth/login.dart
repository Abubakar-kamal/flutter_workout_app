import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_app/auth/signup.dart';
import 'package:workout_app/screens/welcom_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: GoogleFonts.bebasNeue(
                  fontSize: 48,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                "Login to continue",
                style: GoogleFonts.lato(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 60),

              // Email field
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF232441),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white54),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    icon: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.email, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password field
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF232441),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white54),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    icon: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.lock, color: Colors.white),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Login button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>  WelcomView()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF40D876),
                    padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Signup redirect
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: GoogleFonts.lato(color: Colors.white70),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen()));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.lato(
                        color: const Color(0xFF40D876),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
