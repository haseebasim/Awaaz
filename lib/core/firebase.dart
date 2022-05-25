import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirebaseInit {
  static final FirebaseAuth auth = FirebaseAuth.instance;
  static final prefs = SharedPreferences.getInstance();
}
