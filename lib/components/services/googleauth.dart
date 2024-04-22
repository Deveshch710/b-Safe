import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //google services
  Future<User?> signInGoogleServices() async{
    try {
      // Trigger the Google Sign In process
      final GoogleSignInAccount? googleSignInAccount = await GoogleSignIn().signIn();

      if (googleSignInAccount != null) {
        // Obtain the authentication details
        final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

        // Create a new credential
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        // Sign in to Firebase with the credential
        final UserCredential authResult = await _auth.signInWithCredential(
            credential);
        final User? user = authResult.user;
      }

    } catch (error) {
      // An error occurred
      print(error);
      return null;
    }
  }

  void _showLoginDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("You have been logged in successfully. Relaunch the app"),
        );
      },
    );
  }
}



