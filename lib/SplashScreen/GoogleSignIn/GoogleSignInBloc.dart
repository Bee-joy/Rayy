import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rayy/SplashScreen/Master/Event.dart';

class GoogleSignInBloc {
  //To control all the events
  final _eventController = StreamController<Event>();
  Sink<Event> get eventSink => _eventController.sink;

  final _userController = StreamController<GoogleSignInAccount>.broadcast();
  Sink<GoogleSignInAccount> get _userEvents => _userController.sink;
  Stream<GoogleSignInAccount> get userEvents => _userController.stream;

  GoogleSignInBloc() {
    _eventController.stream.listen(_actions);
  }
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future _actions(Event event) async {
    if (event is GoogleSignInEvent) {}
  }

  Future googleLogin() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;
    _userEvents.add(_user!);
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future googleLogOut() async {
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }

  void dispose() {
    _eventController.close();
    _userController.close();
  }
}
