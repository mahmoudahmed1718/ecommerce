import 'dart:developer';

import 'package:ecommerce/core/error/exception.dart';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  Future<User?> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      log(
        'execption on firebaseAuthServerce.createUserWithEmailAndPassword. ${e.toString()}and code is ${e.code}',
      );
      if (e.code == 'weak-password') {
        throw CustomException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
          message: 'The account already exists for that email.',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
          message: 'Please check your internet connection.',
        );
      } else {
        throw CustomException(message: 'An unknown error occurred.');
      }
    } catch (e) {
      log(
        'execption on firebaseAuthServerce.createUserWithEmailAndPassword. ${e.toString()}',
      );
      throw CustomException(message: 'An unknown error occurred.');
    }
  }

  Future<User?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      log(
        'execption on firebaseAuthServerce.signInWithEmailAndPassword. ${e.toString()}and code is ${e.code}',
      );
      if (e.code == 'user-not-found') {
        throw CustomException(message: 'email or password is not correct.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: 'email or password is not correct.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
          message: 'Please check your internet connection.',
        );
      } else {
        throw CustomException(message: 'An unknown error occurred.');
      }
    } catch (e) {
      log(
        'execption on firebaseAuthServerce.signInWithEmailAndPassword. ${e.toString()}',
      );
      throw CustomException(message: 'An unknown error occurred.');
    }
  }
}
