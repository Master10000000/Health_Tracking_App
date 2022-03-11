import 'dart:html';

import 'package:flutter/material.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';
import 'package:health_tracking_app/main.dart';
import 'package:health_tracking_app/pages/Patient/homepage_patient.dart';
import 'package:health_tracking_app/pages/Patient/navigationDrawer_patient.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset("assets/images/backround.jpg")),
          InfoCard(
            context,
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Info"),
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

  Widget InfoCard(BuildContext context) {
    return Column(
      children: [
        Card(
          color: AppColors.MAIN_COLOR,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text("DEVELOPERS",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              const CircleAvatar(
                radius: 52,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR65yg_goFcAga2IIAnSkV2s5B6-OuBcY3Rw&usqp=CAU'),
              ),
              const ListTile(
                  title: Text(
                'Konstantinos Kefalas',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              SizedBox(height: 12),
              const CircleAvatar(
                radius: 52,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTkm_AwmgyPUP2RLhJVneDQpNaT_oHLJQSEw&usqp=CAU'),
              ),
              const ListTile(
                  title: Text(
                'Theodoros Kanellos',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              SizedBox(height: 12),
              Text(
                "This application was developed  in the Human-Computer Interaction course due to the growing need for remote medical care due to the Covid-19 pandemic. Through this both the doctor and the patient can monitor their health and have access to whatever they need. ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
