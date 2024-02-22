import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Signup method
  Future<String?> signUpWithEmailAndPassword(String email, String password,String username) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      String collectionName = "users";
      await firestore.collection(collectionName).add({
        // Optional: Add initial data to the collection if needed
        'Name': username,
        'Email': email,
      })
      .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
      return null; // Return null on success
    } on FirebaseAuthException catch (e) {
      return e.message; // Return an error message on failure
    }
  }
  Future<void> resetPassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: email
      );
      print('Password reset email sent successfully.');
    } catch (e) {
      print('Error sending password reset email: $e');
    }
  }
  Future<String?> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null; // Return null on success
    } on FirebaseAuthException catch (e) {
      return e.message; // Return an error message on failure
    }
  }
  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final UserCredential authResult = await _auth.signInWithCredential(credential);
      final User? user = authResult.user;
      return user;
    } catch (error) {
      print('Google Sign In Error: $error');
      return null;
    }
  }

  Future<void> signOut() async {
    await googleSignIn.signOut();
    await _auth.signOut();

  }
  Future<void> addUserData(List<String> categories,String date,String timeslot) async {

    try {
      // Get the current user
      User? user = _auth.currentUser;

      // Check if the user is authenticated
      if (user != null) {
        // Assume 'users' is the collection containing user data
        DocumentReference userDocRef = firestore.collection('users').doc(user.uid);

        // Add or update data for the user
        await userDocRef.set({
          'email': user.email,
          'displayName': user.displayName,
          'categories': categories,
          'date': date,
          'timeslot': timeslot,

        }, SetOptions(merge: true));

        print('User data added/updated successfully.');
      }
    } catch (e) {
      print('Error adding user data: $e');
    }
  }
}
