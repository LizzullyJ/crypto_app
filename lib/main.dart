import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';

void main() => runApp(const MyHomePage());

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var textController = TextEditingController();
  var cryptoSha1 = '';
  var cryptoMD5 = '';
  @override
  void initState() {

    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Crypto package'),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text(
              'Crypto',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Texto',
                    hintText: 'Texto'),
                    onChanged: (value) {
                          setState(() {
                    cryptoSha1 = sha1
                        .convert(utf8.encode(textController.text))
                        .toString();

                    cryptoMD5 = md5
                        .convert(utf8.encode(textController.text))
                        .toString();

                       
                  });
                    },
              ),
            ),
            // const SizedBox(height: 10),
            // FilledButton.icon(
            //     onPressed: () {
            //       setState(() {
            //         cryptoSha1 = sha1
            //             .convert(utf8.encode(textController.text))
            //             .toString();

            //         cryptoMD5 = md5
            //             .convert(utf8.encode(textController.text))
            //             .toString();

                       
            //       });
            //     },
            //     icon: const Icon(Icons.lock),
            //     label: const Text('Submit'),
            //     style: ButtonStyle(
            //         padding: MaterialStateProperty.resolveWith((states) =>
            //             const EdgeInsets.symmetric(horizontal: 150)))),
            const SizedBox(height: 10),
            Text('💥 Original: ${textController.text}'),
            const SizedBox(height: 10),
            Text('🌷 SHA-1: $cryptoSha1'),
            const SizedBox(height: 10),
            Text('🌻 MD5: $cryptoMD5'),
          ],
        )),
      ),
    );
  }
}
