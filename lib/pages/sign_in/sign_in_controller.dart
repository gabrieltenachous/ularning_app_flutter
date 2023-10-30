import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/pages/sign_in/bloc/sign_in_bloc.dart';

class SignInController {
  final BuildContext context;

  const SignInController({
    required this.context,
  });

  void handleSignIn(String type) async {
    try {
      if (type == "email") {
        //BlocProvider.of<SignInBloc>(context).state
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;
        if (emailAddress.isEmpty) {}
        if (password.isEmpty) {}
        try {
          final credecial =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );
          if (credecial.user == null) {}

          if (credecial.user!.emailVerified) {}

          var user = credecial.user;
          if (user != null) {
            //we got verified user from firebase
          } else {
            //we have error getting
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            print('No user found for that email.');
          } else if (e.code == 'wrong-password') {
            print("Wrong password provided for that user.");
          } else if (e.code == 'invalid-email') {
            print("Your email format is wrong");
          }
        }
      }
    } catch (e) {}
  }
}
