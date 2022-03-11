import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_tracking_app/components/text_field_container.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';
import 'package:health_tracking_app/main.dart';
import 'package:health_tracking_app/pages/Patient/homepage_patient.dart';
import 'package:health_tracking_app/pages/Patient/navigationDrawer_patient.dart';
import 'package:health_tracking_app/pages/Patient/profile.dart';

class MedicinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset("assets/images/backround.jpg")),
          MedicineCard(
            context,
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Medicines"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return PatientHomePage();
                },
              ),
            );
          },
        ),
      ),
    );
  }

  Widget MedicineCard(BuildContext context) {
    return Column(
      children: [
        Card(
          color: AppColors.MAIN_COLOR,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                  title: Text(
                '• Medicine No1',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              const Divider(color: Colors.black54),
              const ListTile(title: Text('Frequensy')),
              const ListTile(
                title: Text('Quantity'),
              ),
              const ListTile(
                title: Text('Consumed'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('DELETE',
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
        Card(
          color: AppColors.MAIN_COLOR,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                  title: Text(
                '• Medicine No2',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              const Divider(color: Colors.black54),
              const ListTile(title: Text('Frequensy')),
              const ListTile(
                title: Text('Quantity'),
              ),
              const ListTile(
                title: Text('Consumed'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('DELETE',
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
