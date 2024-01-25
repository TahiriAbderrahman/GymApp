import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitnessapp/auth/login_screen.dart';
import 'package:fitnessapp/firebase_options.dart';
import 'package:fitnessapp/routes.dart';
import 'package:fitnessapp/utils/app_colors.dart';
import 'package:fitnessapp/view/dashboard/dashboard_screen.dart';
import 'package:fitnessapp/view/profile/complete_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as auth;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Configure FirebaseUIAuth providers
  auth.FirebaseUIAuth.configureProviders([
    auth.EmailAuthProvider(),
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness',
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor1,
        useMaterial3: true,
        fontFamily: "Poppins"
      ),
      home: const AuthWrapper(),
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          User? user = snapshot.data;

          // Check if the user is signed in
          if (user == null) {
            print( "azeazeazea" );
            
            return const LoginAuth();
          } else {
             print( "mlkdfgkldfgklmfdgmklfdmlgkdfgmlkfd" );
            return const CompleteProfileScreen();
          }
        }

        // Show a loading indicator while checking authentication state
        return const CircularProgressIndicator();
      },
    );
  }
}

