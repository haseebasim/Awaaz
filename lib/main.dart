import 'package:haseeb_s_application/features/calender_screen/presentation/calender_screen.dart';
import 'package:haseeb_s_application/features/chat_list_screen/presentation/chat_list_screen.dart';
import 'package:haseeb_s_application/features/dashboard_screen/presentation/dashboard_screen.dart';
import 'package:haseeb_s_application/features/day_roadmap_screen/day_roadmap_screen.dart';
import 'package:haseeb_s_application/features/new_profile_screen/presentation/new_profile_screen.dart';
import 'package:haseeb_s_application/features/patient_list_screen/presentation/patient_list_screen.dart';
import 'package:haseeb_s_application/features/patient_profile_screen/presentation/patient_profile_screen.dart';
import 'package:haseeb_s_application/features/week_01_screen/presentation/week_01_screen.dart';
import 'package:haseeb_s_application/features/week_roadmap_screen/week_roadmap_screen.dart';
import 'package:haseeb_s_application/features/words_screen/words_screen.dart';
import 'package:haseeb_s_application/provider/auth.dart';
import 'package:haseeb_s_application/features/login_screen/presentation/login_screen.dart';
import 'package:haseeb_s_application/provider/course.dart';
import 'package:haseeb_s_application/provider/patients.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import './features/launch_screen/presentation/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Auth()),
        ChangeNotifierProvider.value(value: Patients()),
        ChangeNotifierProvider.value(
          value: Course(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'haseeb_s_application',
        home: LaunchScreen(),
        routes: {
          LoginScreen.routeName: (context) => LoginScreen(),
          DashboardScreen.routeName: (context) => DashboardScreen(),
          NewProfileScreen.routeName: (context) => NewProfileScreen(),
          CalenderScreen.routeName: (context) => CalenderScreen(),
          PatientListScreen.routeName: (context) => PatientListScreen(),
          ChatListScreen.routeName: (context) => ChatListScreen(),
          PatientProfileScreen.routeName: (context) => PatientProfileScreen(),
          WeekRoadmapScreen.routeName: (context) => WeekRoadmapScreen(),
          DayRoadmapScreen.routeName: (context) => DayRoadmapScreen(),
          WordsScreen.routeName: (context) => WordsScreen(),
          Week01Screen.routeName: (context) => Week01Screen()
        },
      ),
    );
  }
}
