import 'package:app_ui/app_ui.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'models/user.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.standard,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("appBar"),
        ),
        body: ResponsiveLayoutBuilder(
            small: (BuildContext context, Widget? widget) {
          return const Text("small");
        }, large: (BuildContext context, Widget? widget) {
          return FirestoreBuilder<UserQuerySnapshot>(
              ref: usersRef,
              builder: (context, AsyncSnapshot<UserQuerySnapshot> snapshot,
                  Widget? child) {
                if (snapshot.hasError) return Text('Something went wrong!');
                if (!snapshot.hasData) return Text('Loading users...');

                // Access the QuerySnapshot
                UserQuerySnapshot querySnapshot = snapshot.requireData;

                return ListView.builder(
                  itemCount: querySnapshot.docs.length,
                  itemBuilder: (context, index) {
                    // Access the User instance
                    User user = querySnapshot.docs[index].data;

                    return Text('User name: ${user.lastName}, age ${user.age}');
                  },
                );
              });
        }),
      ),
    );
  }
}
