import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_page/components/signup_step1.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:login_page/pages/dashboard_page.dart';

class SignUpStep2 extends StatefulWidget {
  @override
  const SignUpStep2({super.key});

  @override
  State<SignUpStep2> createState() => _SignUpStep2State();
}

class _SignUpStep2State extends State<SignUpStep2> {
  final TextEditingController stateController = TextEditingController();
  final TextEditingController zoneController = TextEditingController();

  final List<String> states = [
    "Maharashtra",
    "Goa",
    "Kerela",
    "jammu Kashmir",
    "Haryan"
  ];

  String? selectedState;

  final List<String> zone = [
    "North Zone",
    "South zone",
    "East Zone",
    "West Zone",
    "Central Zone",
  ];

  String? selectedzone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 233, 247, 247),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      'Step 2/4',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Area of Working',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TypeAheadField<String>(
                        builder: (context, controller, focusNode) {
                          return TextField(
                              controller: controller,
                              focusNode: focusNode,
                              autofocus: true,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(19.0))),
                                labelText: 'City',
                              ));
                        },
                        controller: stateController,
                        itemBuilder: (context, String suggestion) {
                          return ListTile(
                            title: Text(suggestion),
                          );
                        },
                        onSelected: (String suggestion) {
                          stateController.text = suggestion;
                          setState(() {});
                        },
                        suggestionsCallback: (pattern) {
                          return Future.value(states
                              .where((state) => state
                                  .toLowerCase()
                                  .contains(pattern.toLowerCase()))
                              .toList());
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TypeAheadField<String>(
                        builder: (context, controller, focusNode) {
                          return TextField(
                            controller: controller,
                            focusNode: focusNode,
                            autofocus: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(19.0))),
                              labelText: 'ZONE',
                            ),
                          );
                        },
                        controller: zoneController,
                        itemBuilder: (context, String suggestion) {
                          return ListTile(
                            title: Text(suggestion),
                          );
                        },
                        onSelected: (String suggestion) {
                          zoneController.text = suggestion;
                          setState(() {});
                        },
                        suggestionsCallback: (pattern) {
                          return Future.value(zone
                              .where((zone) => zone
                                  .toLowerCase()
                                  .contains(pattern.toLowerCase()))
                              .toList());
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 120),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Previous")),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyDashBoard()),
                      );
                    },
                    child: const Text("Next"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
