import 'package:flutter/material.dart';
import 'package:pertemuan06/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: false),
      home: DynamicBottomNavbar(),
    );
  }
}

class MyInput extends StatefulWidget {
  const MyInput({super.key});

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  TextEditingController _controller = TextEditingController();
  bool lightOn = false;
  String? language;
  bool agree = false;
  //wajib menggunakan dispose untuk membersihkan memory
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Widget')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //widget untuk input
            TextField(
              //wajib memasukan controller di textfield
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Write your name here...',
                labelText: 'Your Name',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    //untuk menampilkan dialog panggil controller.text
                    return AlertDialog(content: Text('Hello, ${_controller.text}!'));
                  },
                );
              },
            ),
            //widget switch
            Switch(
              value: lightOn,
              onChanged: (bool value) {
                setState(() {
                  lightOn = value;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(lightOn ? 'Light is ON' : 'Light is OFF'),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile<String>(
                  title: const Text('Dart'),
                  value: 'Dart',
                  groupValue: language,
                  onChanged: (String? value) {
                    setState(() {
                      language = value;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('You selected $language'),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  },
                ),
                RadioListTile<String>(
                  title: const Text('Kotlin'),
                  value: 'Kotlin',
                  groupValue: language,
                  onChanged: (String? value) {
                    setState(() {
                      language = value;
                      // showSnackbar();;
                    });
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('You selected $language'),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  },
                ),
                RadioListTile<String>(
                  title: const Text('Swift'),
                  value: 'Swift',
                  groupValue: language,
                  onChanged: (String? value) {
                    setState(() {
                      language = value;
                      // showSnackbar();;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('You selected $language'),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  },
                ),
              ],
            ),
            CheckboxListTile(
              title: const Text('Agree / Disagree'),
              value: agree,
              onChanged: (bool? value) {
                setState(() {
                  agree = value!;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(agree ? 'You agreed' : 'You disagreed'),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
              controlAffinity: ListTileControlAffinity.leading,
            )
          ],
        ),
      ),
    );
  }
}

